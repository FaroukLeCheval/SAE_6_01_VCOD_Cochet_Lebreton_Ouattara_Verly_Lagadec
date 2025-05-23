import os
import sys
import psycopg
import json
import re
from datetime import datetime

postgres_db = os.environ.get('POSTGRES_DB')
postgres_user = os.environ.get('POSTGRES_USER')
postgres_password = os.environ.get('POSTGRES_PASSWORD')
postgres_host = os.environ.get('POSTGRES_HOST')
postgres_port = os.environ.get('POSTGRES_PORT')
output_directory_sample = "../data_collection/sample_output"
output_directory_scrapped = "../data_collection/scraped_data/json"


def get_connection_string():
    conn_str = f"postgresql://{postgres_user}:{postgres_password}@{postgres_host}:{postgres_port}/{postgres_db}"
    print(f"Connection string: {conn_str}")  # Temporaire pour debug
    return conn_str

def execute_sql_script(path: str):
    with psycopg.connect(get_connection_string()) as conn:
        with conn.cursor() as cur:
            with open(path) as f:
                cur.execute(f.read())

def clean_text(text):
    if isinstance(text, str):
        # Nettoie le texte
        text = text.replace('é', 'e').replace('è', 'e').replace('à', 'a')
        text = re.sub(r'[^\x00-\x7F]+', '', text)  # Supprime les caracteres non-ASCII
        return text
    return text

def insert_wrk_tournaments():
    tournament_data = []
    for file in os.listdir(output_directory_sample):
        with open(f"{output_directory_sample}/{file}") as f:
            content = f.read()
            content = re.sub(r'\\u00e9', 'e', content)  # Remplace \u00e9 par e
            tournament = json.loads(content)
            tournament_data.append((
                tournament['id'], 
                clean_text(tournament['name']), 
                datetime.strptime(tournament['date'], '%Y-%m-%dT%H:%M:%S.000Z'),
                clean_text(tournament['organizer']), 
                clean_text(tournament['format']), 
                int(tournament['nb_players'])
            ))
    
    with psycopg.connect(get_connection_string()) as conn:
        with conn.cursor() as cur:
            cur.executemany("INSERT INTO public.wrk_tournaments values (%s, %s, %s, %s, %s, %s)", tournament_data)

def insert_wrk_decklists():
    decklist_data = []
    for file in os.listdir(output_directory_sample):
        with open(f"{output_directory_sample}/{file}") as f:
            content = f.read()
            content = re.sub(r'\\u00e9', 'e', content)  # Remplace \u00e9 par e
            tournament = json.loads(content)
            tournament_id = tournament['id']
            for player in tournament['players']:
                player_id = player['id']
                for card in player['decklist']:
                    saison, booster = (card['url']).split('/cards/')[-1].split('/')
                    decklist_data.append((
                        tournament_id,
                        player_id,
                        clean_text(card['type']),
                        clean_text(card['name']),
                        clean_text(card['url']),
                        saison,
                        booster,
                        int(card['count'])
                    ))
    
    with psycopg.connect(get_connection_string()) as conn:
        with conn.cursor() as cur:
            cur.executemany("INSERT INTO public.wrk_decklists values (%s, %s, %s, %s, %s, %s, %s, %s)", decklist_data)

def insert_wrk_infocard():
    infocard_data = []
    for file in os.listdir(output_directory_scrapped):
        with open(f"{output_directory_scrapped}/{file}") as f:
            content = f.read()
            content = re.sub(r'\\u00e9', 'e', content)  # Remplace \u00e9 par e
            infocard = json.loads(content)
            for card in infocard:
              # urlcard = infocard['url']
              infocard_data.append((
                        card['url'],
                        clean_text(card['nom']),
                        clean_text(card['type_carte']),
                        clean_text(card['sous_type']),
                        int(card['hp']) if card['hp'] is not None else None,
                        clean_text(card['evolving_stage']),
                        clean_text(card['evolves_from']),
                        clean_text(card['competence_1_nom']),
                        card['competence_1_puissance'],
                        clean_text(card['competence_2_nom']),
                        card['competence_2_puissance'],
                        clean_text(card['faiblesse']),
                        int(card['retreat']) if card['retreat'] is not None else None
                    ))
    
    with psycopg.connect(get_connection_string()) as conn:
        with conn.cursor() as cur:
            cur.executemany("INSERT INTO public.wrk_infocards values (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", infocard_data)

print("creating work tables")
execute_sql_script("00_create_wrk_tables.sql")
print("insert raw tournament data")
insert_wrk_tournaments()
print("insert raw decklist data")
insert_wrk_decklists()
print("insert raw infocard data")
insert_wrk_infocard()
print("construct card database")
execute_sql_script("01_dwh_cards.sql")

