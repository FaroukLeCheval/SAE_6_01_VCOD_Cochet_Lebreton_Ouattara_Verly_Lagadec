from bs4 import BeautifulSoup, Tag
from dataclasses import dataclass, asdict
import aiohttp
import aiofile
import asyncio
import os
import json
import re
import logging
import traceback
from datetime import datetime

# Configuration du logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(levelname)s - %(message)s',
    handlers=[
        logging.FileHandler('scraper_debug.log'),
        logging.StreamHandler()
    ]
)
logger = logging.getLogger(__name__)

base_url = "https://play.limitlesstcg.com"
headers = {'User-Agent':'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36'}

# Dataclasses used for json generation
@dataclass
class DeckListItem:
  type:str
  url: str
  name: str
  count: int

@dataclass
class Player:
  id: str
  name: str
  placing: str
  country: str
  decklist: list[DeckListItem]

@dataclass
class MatchResult:
  player_id: str
  score: int

@dataclass
class Match:
  match_results: list[MatchResult]

@dataclass
class Tournament:
  id: str
  name: str
  date: str
  organizer: str
  format: str
  nb_players: str
  players: list[Player]
  matches:list[Match]

# Extract the tr tags from a table, omiting the first header
def extract_trs(soup: BeautifulSoup, table_class: str):
  try:
    logger.debug(f"Extracting TRs from table class: {table_class}")
    table = soup.find(class_=table_class)
    if table is None:
      logger.error(f"Table with class '{table_class}' not found")
      return []
    
    trs = table.find_all("tr")
    if not trs:
      logger.warning(f"No TR elements found in table class '{table_class}'")
      return []
    
    logger.debug(f"Found {len(trs)} TR elements, removing header")
    trs.pop(0) # Remove header
    logger.debug(f"Returning {len(trs)} data rows")
    return trs
  except Exception as e:
    logger.error(f"Error extracting TRs from table class '{table_class}': {str(e)}")
    return []

# Urls helpers
def construct_standings_url(tournament_id: str):
  url = f"/tournament/{tournament_id}/standings?players"
  logger.debug(f"Constructed standings URL: {url}")
  return url

def construct_pairings_url(tournament_id: str):
  url = f"/tournament/{tournament_id}/pairings"
  logger.debug(f"Constructed pairings URL: {url}")
  return url

def construct_decklist_url(tournament_id: str, player_id: str):
  url = f"/tournament/{tournament_id}/player/{player_id}/decklist"
  logger.debug(f"Constructed decklist URL: {url}")
  return url

# Extract the previous pairing pages urls
def extract_previous_pairings_urls(pairings: BeautifulSoup):
  try:
    logger.debug("Extracting previous pairings URLs")
    pairing_urls = pairings.find(class_="mini-nav")
    
    # If there is only one round, return empty array
    if pairing_urls is None:
      logger.debug("No mini-nav found, assuming single round tournament")
      return []
    
    pairing_urls = pairing_urls.find_all("a")
    logger.debug(f"Found {len(pairing_urls)} pairing navigation links")
    
    # Pop the last item in array because it's the current page
    pairing_urls.pop(-1)
    logger.debug(f"After removing current page, {len(pairing_urls)} previous rounds remain")

    pairing_urls = [a.attrs["href"] for a in pairing_urls]
    logger.debug(f"Previous pairings URLs: {pairing_urls}")
    
    return pairing_urls
  except Exception as e:
    logger.error(f"Error extracting previous pairings URLs: {str(e)}")
    return []

# Check if the pairing page is a bracket (single elimination)
def is_bracket_pairing(pairings: BeautifulSoup):
  try:
    is_bracket = pairings.find("div", class_="live-bracket") is not None
    logger.debug(f"Is bracket pairing: {is_bracket}")
    return is_bracket
  except Exception as e:
    logger.error(f"Error checking if bracket pairing: {str(e)}")
    return False

# Check if the pairing page is a table (swiss rounds)
regex_tournament_id = re.compile(r'[a-zA-Z0-9_\-]*')
def is_table_pairing(pairings: BeautifulSoup):
  try:
    pairings_div = pairings.find("div", class_="pairings")
    if pairings_div is not None:
      table = pairings_div.find("table", {'data-tournament': regex_tournament_id})
      if table is not None:
        logger.debug("Found table pairing")
        return True

    logger.debug("No table pairing found")
    return False
  except Exception as e:
    logger.error(f"Error checking if table pairing: {str(e)}")
    return False

# Return a list of matches from a bracket style pairing page
def extract_matches_from_bracket_pairings(pairings: BeautifulSoup):
  try:
    logger.debug("Extracting matches from bracket pairings")
    matches = []
    
    bracket_div = pairings.find("div", class_="live-bracket")
    if bracket_div is None:
      logger.warning("No live-bracket div found")
      return matches
    
    matches_div = bracket_div.find_all("div", class_="bracket-match")
    logger.debug(f"Found {len(matches_div)} bracket matches")
    
    for i, match in enumerate(matches_div):
      try:
        # We don't extract the match if one of the players is a bye
        if match.find("a", class_="bye") is not None:
          logger.debug(f"Match {i} contains bye, skipping")
          continue

        players_div = match.find_all("div", class_="live-bracket-player")
        if len(players_div) < 2:
          logger.warning(f"Match {i} has less than 2 players, skipping")
          continue
        
        match_results = []
        for j, player in enumerate(players_div):
          player_id = player.attrs.get("data-id")
          score_div = player.find("div", class_="score")
          
          if player_id is None:
            logger.warning(f"Match {i}, player {j}: no data-id found")
            continue
          if score_div is None:
            logger.warning(f"Match {i}, player {j}: no score div found")
            continue
          
          score = score_div.attrs.get("data-score")
          if score is None:
            logger.warning(f"Match {i}, player {j}: no data-score found")
            continue
          
          match_results.append(MatchResult(player_id, int(score)))
          logger.debug(f"Match {i}, player {j}: ID={player_id}, Score={score}")

        if len(match_results) >= 2:
          matches.append(Match(match_results))
          logger.debug(f"Added match {i} with {len(match_results)} results")
        
      except Exception as e:
        logger.error(f"Error processing bracket match {i}: {str(e)}")
    
    logger.info(f"Extracted {len(matches)} matches from bracket pairings")
    return matches
  except Exception as e:
    logger.error(f"Error extracting matches from bracket pairings: {str(e)}")
    return []

# Return a list of matches from a table style pairing page
def extract_matches_from_table_pairings(pairings: BeautifulSoup):
  try:
    logger.debug("Extracting matches from table pairings")
    matches = []
    
    matches_tr = pairings.find_all("tr", {'data-completed': '1'})
    logger.debug(f"Found {len(matches_tr)} completed matches")

    for i, match in enumerate(matches_tr):
      try:
        p1 = match.find("td", class_="p1")
        p2 = match.find("td", class_="p2")

        if p1 is None or p2 is None:
          logger.warning(f"Table match {i}: missing p1 or p2 td")
          continue
        
        p1_id = p1.attrs.get("data-id")
        p1_count = p1.attrs.get("data-count")
        p2_id = p2.attrs.get("data-id")
        p2_count = p2.attrs.get("data-count")
        
        if None in [p1_id, p1_count, p2_id, p2_count]:
          logger.warning(f"Table match {i}: missing required attributes")
          continue
        
        matches.append(Match([
          MatchResult(p1_id, int(p1_count)),
          MatchResult(p2_id, int(p2_count))
        ]))
        logger.debug(f"Table match {i}: P1={p1_id}({p1_count}), P2={p2_id}({p2_count})")
        
      except Exception as e:
        logger.error(f"Error processing table match {i}: {str(e)}")

    logger.info(f"Extracted {len(matches)} matches from table pairings")
    return matches
  except Exception as e:
    logger.error(f"Error extracting matches from table pairings: {str(e)}")
    return []

# Return a list of DeckListItems from a player decklist page
regex_card_url = re.compile(r'pocket\.limitlesstcg\.com/cards/.*')
def extract_decklist(decklist: BeautifulSoup) -> list[DeckListItem]:
  try:
    logger.debug("Extracting decklist")
    decklist_div = decklist.find("div", class_="decklist")
    cards = []
    
    if decklist_div is None:
      logger.debug("No decklist div found")
      return cards
    
    cards_a = decklist_div.find_all("a", {'href': regex_card_url})
    logger.debug(f"Found {len(cards_a)} card links")
    
    for i, card in enumerate(cards_a):
      try:
        card_text = card.text
        if len(card_text) < 2:
          logger.warning(f"Card {i}: text too short '{card_text}'")
          continue
        
        count = int(card_text[0])
        name = card_text[2:]
        url = card.attrs.get("href", "")
        
        # Find card type
        heading_div = card.parent.parent.find("div", class_="heading")
        if heading_div is None:
          logger.warning(f"Card {i}: no heading div found")
          card_type = "Unknown"
        else:
          card_type = heading_div.text.split(" ")[0]
        
        cards.append(DeckListItem(card_type, url, name, count))
        logger.debug(f"Card {i}: {count}x {name} ({card_type})")
        
      except Exception as e:
        logger.error(f"Error processing card {i}: {str(e)}")

    logger.info(f"Extracted {len(cards)} cards from decklist")
    return cards
  except Exception as e:
    logger.error(f"Error extracting decklist: {str(e)}")
    return []

# Extract a beautiful soup object from a url
async def async_soup_from_url(session: aiohttp.ClientSession, sem: asyncio.Semaphore, url: str, use_cache: bool = True):
  
  if url is None:
    logger.warning("URL is None, returning None")
    return None
  
  try:
    # Construct cache filename
    cache_filename = "cache" + url
    cache_filename = ''.join(x for x in cache_filename if (x == "/" or x.isalnum()))
    cache_filename = f"{cache_filename}.html"
    
    html = ""

    if use_cache and os.path.isfile(cache_filename):
      logger.debug(f"Loading from cache: {url}")
      async with sem:
        async with aiofile.async_open(cache_filename, "r") as file:
          html = await file.read()
    else:
      logger.debug(f"Fetching from web: {url}")
      async with session.get(url, headers=headers) as resp:
        if resp.status != 200:
          logger.error(f"HTTP {resp.status} for URL: {url}")
          return None
        html = await resp.text()
        logger.debug(f"Fetched {len(html)} characters from {url}")

      directory = os.path.dirname(cache_filename)
      if not os.path.exists(directory):
        os.makedirs(directory)
      
      async with sem:
        async with aiofile.async_open(cache_filename, "w") as file:
          await file.write(html)
      logger.debug(f"Cached response to: {cache_filename}")

    soup = BeautifulSoup(html, 'html.parser')
    logger.debug(f"Created BeautifulSoup object for: {url}")
    return soup
    
  except Exception as e:
    logger.error(f"Error fetching/parsing URL {url}: {str(e)}")
    logger.error(traceback.format_exc())
    return None

async def extract_players(
  session: aiohttp.ClientSession,
  sem: asyncio.Semaphore,
  standings_page: BeautifulSoup,
  tournament_id: str) -> list[Player]:

  try:
    logger.info(f"Extracting players for tournament {tournament_id}")
    players = []
    player_trs = extract_trs(standings_page, "striped")
    
    if not player_trs:
      logger.warning(f"No player TRs found for tournament {tournament_id}")
      return players
    
    logger.debug(f"Found {len(player_trs)} player rows")
    
    # Extract player information
    regex_player_id = re.compile(r'/tournament/[a-zA-Z0-9_\-]*/player/[a-zA-Z0-9_]*')
    regex_decklist_url = re.compile(r'/tournament/[a-zA-Z0-9_\-]*/player/[a-zA-Z0-9_]*/decklist')
    
    player_ids = []
    has_decklist = []
    player_names = []
    player_placings = []
    player_countries = []
    
    for i, player_tr in enumerate(player_trs):
      try:
        # Extract player ID
        player_link = player_tr.find("a", {'href': regex_player_id})
        if player_link is None:
          logger.warning(f"Player {i}: no player link found")
          continue
        player_id = player_link.attrs["href"].split('/')[4]
        player_ids.append(player_id)
        
        # Check if decklist exists
        decklist_link = player_tr.find("a", {'href': regex_decklist_url})
        has_decklist.append(decklist_link is not None)
        
        # Extract other attributes
        player_names.append(player_tr.attrs.get('data-name', 'Unknown'))
        player_placings.append(player_tr.attrs.get("data-placing", -1))
        player_countries.append(player_tr.attrs.get("data-country", None))
        
        logger.debug(f"Player {i}: ID={player_id}, Name={player_names[-1]}, HasDecklist={has_decklist[-1]}")
        
      except Exception as e:
        logger.error(f"Error processing player row {i}: {str(e)}")

    logger.info(f"Found {len(player_ids)} valid players, {sum(has_decklist)} with decklists")
    
    # Construct decklist URLs
    decklist_urls = []
    for i in range(len(player_ids)):
      decklist_urls.append(construct_decklist_url(tournament_id, player_ids[i]) if has_decklist[i] else None)

    # Fetch decklists
    logger.info("Fetching player decklists...")
    player_decklists = await asyncio.gather(*[async_soup_from_url(session, sem, url, True) for url in decklist_urls])

    # Create player objects
    for i in range(len(player_ids)):
      try:
        if not has_decklist[i]:
          logger.debug(f"Skipping player {i} (no decklist)")
          continue
          
        if player_decklists[i] is None:
          logger.warning(f"Failed to fetch decklist for player {i}")
          continue

        decklist = extract_decklist(player_decklists[i])
        player = Player(
          player_ids[i],
          player_names[i],
          player_placings[i],
          player_countries[i],
          decklist
        )
        players.append(player)
        logger.debug(f"Created player object for {player_names[i]} with {len(decklist)} cards")
        
      except Exception as e:
        logger.error(f"Error creating player object {i}: {str(e)}")

    logger.info(f"Successfully extracted {len(players)} players with decklists")
    return players
    
  except Exception as e:
    logger.error(f"Error extracting players for tournament {tournament_id}: {str(e)}")
    logger.error(traceback.format_exc())
    return []

async def extract_matches(
  session: aiohttp.ClientSession,
  sem: asyncio.Semaphore,
  tournament_id: str) -> list[Match]:

  try:
    logger.info(f"Extracting matches for tournament {tournament_id}")
    matches = []
    
    # Get last pairings page
    last_pairings = await async_soup_from_url(session, sem, construct_pairings_url(tournament_id))
    if last_pairings is None:
      logger.error(f"Failed to fetch last pairings for tournament {tournament_id}")
      return matches
    
    # Get previous pairings URLs
    previous_pairings_urls = extract_previous_pairings_urls(last_pairings)
    logger.info(f"Found {len(previous_pairings_urls)} previous pairing rounds")
    
    # Fetch all pairings pages
    pairings = await asyncio.gather(*[async_soup_from_url(session, sem, url) for url in previous_pairings_urls])
    pairings.append(last_pairings)
    logger.info(f"Processing {len(pairings)} pairing pages")

    for i, pairing in enumerate(pairings):
      try:
        if pairing is None:
          logger.warning(f"Pairing page {i} is None, skipping")
          continue
          
        if is_bracket_pairing(pairing):
          logger.debug(f"Processing bracket pairing page {i}")
          round_matches = extract_matches_from_bracket_pairings(pairing)
        elif is_table_pairing(pairing):
          logger.debug(f"Processing table pairing page {i}")
          round_matches = extract_matches_from_table_pairings(pairing)
        else:
          logger.error(f"Unrecognized pairing type for page {i}")
          continue
        
        matches.extend(round_matches)
        logger.debug(f"Added {len(round_matches)} matches from pairing page {i}")
        
      except Exception as e:
        logger.error(f"Error processing pairing page {i}: {str(e)}")
    
    logger.info(f"Successfully extracted {len(matches)} total matches")
    return matches
    
  except Exception as e:
    logger.error(f"Error extracting matches for tournament {tournament_id}: {str(e)}")
    logger.error(traceback.format_exc())
    return []

async def handle_tournament_standings_page(
    session: aiohttp.ClientSession,
    sem: asyncio.Semaphore,
    standings_page: BeautifulSoup,
    tournament_id: str, 
    tournament_name: str,
    tournament_date: str,
    tournament_organizer: str,
    tournament_format: str,
    tournament_nb_players: int):
  
  try:
    output_file = f"output/{tournament_id}.json"
    
    logger.info(f"Processing tournament {tournament_id}: {tournament_name}")

    # If the json file for this tournament already exists, we don't recreate it
    if os.path.isfile(output_file):
      logger.info(f"Tournament {tournament_id} already processed, skipping")
      return
    else:
      directory = os.path.dirname(output_file)
      if not os.path.exists(directory):
          os.makedirs(directory)
          logger.debug(f"Created output directory: {directory}")

    players = await extract_players(session, sem, standings_page, tournament_id)
    if len(players) == 0:
      logger.warning(f"No players with decklists found for tournament {tournament_id}, skipping")
      return
    
    nb_decklists = sum(1 for player in players if len(player.decklist) > 0)
    logger.info(f"Tournament {tournament_id}: {len(players)} players, {nb_decklists} decklists")
    
    matches = await extract_matches(session, sem, tournament_id)

    tournament = Tournament(
      tournament_id,
      tournament_name,
      tournament_date,
      tournament_organizer,
      tournament_format,
      tournament_nb_players,
      players,
      matches
    )

    logger.info(f"Tournament {tournament_id}: {len(players)} players, {nb_decklists} decklists, {len(matches)} matches")
    
    with open(output_file, "w") as f:
      json.dump(asdict(tournament), f, indent=2)
    
    logger.info(f"Successfully saved tournament {tournament_id} to {output_file}")
    
  except Exception as e:
    logger.error(f"Error handling tournament {tournament_id}: {str(e)}")
    logger.error(traceback.format_exc())

first_tournament_page = "/tournaments/completed?game=POCKET&format=STANDARD&platform=all&type=online&time=all&page=53"
regex_standings_url = re.compile(r'/tournament/[a-zA-Z0-9_\-]*/standings')

async def handle_tournament_list_page(session: aiohttp.ClientSession, sem: asyncio.Semaphore, url: str):
  try:
    logger.info(f"Processing tournament list page: {url}")
    soup = await async_soup_from_url(session, sem, url, False)
    
    if soup is None:
      logger.error(f"Failed to fetch tournament list page: {url}")
      return
    
    pagination = soup.find("ul", class_="pagination")
    if pagination is None:
      logger.error("No pagination found on tournament list page")
      return
    
    current_page = int(pagination.attrs.get("data-current", 0))
    max_page = int(pagination.attrs.get("data-max", 0))
    
    logger.info(f"Processing page {current_page} of {max_page}")

    tournament_trs = extract_trs(soup, "completed-tournaments")
    if not tournament_trs:
      logger.warning("No tournament rows found on this page")
      return
    
    logger.debug(f"Found {len(tournament_trs)} tournaments on this page")
    
    # Extract tournament information
    tournament_data = []
    for i, tournament_tr in enumerate(tournament_trs):
      try:
        standings_link = tournament_tr.find("a", {'href': regex_standings_url})
        if standings_link is None:
          logger.warning(f"Tournament {i}: no standings link found")
          continue
        
        tournament_id = standings_link.attrs["href"].split('/')[2]
        tournament_name = tournament_tr.attrs.get('data-name', 'Unknown')
        tournament_date = tournament_tr.attrs.get('data-date', 'Unknown')
        tournament_organizer = tournament_tr.attrs.get('data-organizer', 'Unknown')
        tournament_format = tournament_tr.attrs.get('data-format', 'Unknown')
        tournament_nb_players = tournament_tr.attrs.get('data-players', '0')
        
        tournament_data.append({
          'id': tournament_id,
          'name': tournament_name,
          'date': tournament_date,
          'organizer': tournament_organizer,
          'format': tournament_format,
          'nb_players': tournament_nb_players
        })
        
        logger.debug(f"Tournament {i}: {tournament_id} - {tournament_name}")
        
      except Exception as e:
        logger.error(f"Error processing tournament row {i}: {str(e)}")
    
    logger.info(f"Successfully parsed {len(tournament_data)} tournaments")
    
    # Fetch all standings pages
    standings_urls = [construct_standings_url(t['id']) for t in tournament_data]
    logger.info("Fetching standings pages...")
    standings = await asyncio.gather(*[async_soup_from_url(session, sem, url) for url in standings_urls])

    # Process each tournament
    for i, tournament_info in enumerate(tournament_data):
      if standings[i] is not None:
        await handle_tournament_standings_page(
          session, sem, standings[i], 
          tournament_info['id'], 
          tournament_info['name'], 
          tournament_info['date'], 
          tournament_info['organizer'], 
          tournament_info['format'], 
          tournament_info['nb_players']
        )
      else:
        logger.error(f"Failed to fetch standings for tournament {tournament_info['id']}")

    # Continue to next page if available
    if current_page < max_page:
      next_url = f"{first_tournament_page}&page={current_page+1}"
      logger.info(f"Moving to next page: {current_page+1}")
      await handle_tournament_list_page(session, sem, next_url)
    else:
      logger.info("Reached last page of tournaments")
      
  except Exception as e:
    logger.error(f"Error handling tournament list page {url}: {str(e)}")
    logger.error(traceback.format_exc())

async def main():
  try:
    logger.info("Starting Pokemon TCG Pocket scraper")
    logger.info(f"Starting from page: {first_tournament_page}")
    
    # Limit number of concurrent http calls
    connector = aiohttp.TCPConnector(limit=20)

    # Limit number of concurrent open files
    sem = asyncio.Semaphore(50)

    async with aiohttp.ClientSession(base_url=base_url, connector=connector, headers=headers) as session:
      await handle_tournament_list_page(session, sem, first_tournament_page)
    
    logger.info("Scraping completed successfully")
    
  except Exception as e:
    logger.error(f"Fatal error in main: {str(e)}")
    logger.error(traceback.format_exc())
    
if __name__ == "__main__":
    asyncio.run(main())