"""
import os
import sys

# Force UTF-8 encoding
os.environ['PYTHONIOENCODING'] = 'utf-8'
if sys.platform.startswith('win'):
    import codecs
    sys.stdout.reconfigure(encoding='utf-8')
    sys.stderr.reconfigure(encoding='utf-8')
"""

import psycopg
import os
import json
import re
from datetime import datetime

postgres_db=os.environ.get('POSTGRES_DB')
postgres_user=os.environ.get('POSTGRES_USER')
postgres_password=os.environ.get('POSTGRES_PASSWORD')
postgres_host=os.environ.get('POSTGRES_HOST')
postgres_port=os.environ.get('POSTGRES_PORT')

output_directory = "../data_collection/sample_output"

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
        # Supprime tous les caractères non-ASCII
        return ''.join(char for char in text if ord(char) < 128)
    return text

def insert_wrk_tournaments():
  tournament_data = []
  for file in os.listdir(output_directory):
    with open(f"{output_directory}/{file}", encoding='utf-8') as f:
      content = f.read()
      content = re.sub(r'\\u00e9', 'é', content)  # Remplace \u00e9 par é
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
  for file in os.listdir(output_directory):
    with open(f"{output_directory}/{file}", encoding='utf-8') as f:
      content = f.read()
      content = re.sub(r'\\u00e9', 'é', content)  # Remplace \u00e9 par é
      tournament = json.loads(content)
      tournament_id = tournament['id']
      for player in tournament['players']:
        player_id = player['id']
        for card in player['decklist']:
          decklist_data.append((
            tournament_id,
            player_id,
            clean_text(card['type']),
            clean_text(card['name']),
            clean_text(card['url']),
            int(card['count']),
          ))
  
  with psycopg.connect(get_connection_string()) as conn:
    with conn.cursor() as cur:
      cur.executemany("INSERT INTO public.wrk_decklists values (%s, %s, %s, %s, %s, %s)", decklist_data)

print("creating work tables")
execute_sql_script("00_create_wrk_tables.sql")

print("insert raw tournament data")
insert_wrk_tournaments()

print("insert raw decklist data")
insert_wrk_decklists()

print("construct card database")
execute_sql_script("01_dwh_cards.sql")