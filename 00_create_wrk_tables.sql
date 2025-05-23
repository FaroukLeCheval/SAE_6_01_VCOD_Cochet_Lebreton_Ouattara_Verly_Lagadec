-- public.tournaments definition
DROP TABLE IF EXISTS public.wrk_tournaments;
CREATE TABLE public.wrk_tournaments (
  tournament_id varchar NULL,
  tournament_name varchar NULL,
  tournament_date timestamp NULL,
  tournament_organizer varchar NULL,
  tournament_format varchar NULL,
  tournament_nb_players int NULL
);

DROP TABLE IF EXISTS public.wrk_decklists;
CREATE TABLE public.wrk_decklists (
  tournament_id varchar NULL,
  player_id varchar NULL,
  card_type varchar NULL,
  card_name varchar NULL,
  card_url varchar NULL,
  card_saison varchar NULL,
  card_booster varchar NULL,
  card_count int NULL
);

DROP TABLE IF EXISTS public.wrk_infocards;
CREATE TABLE public.wrk_infocards (
  url varchar NULL,
  nom varchar NULL,
  type_carte varchar NULL,
  sous_type varchar NULL,
  hp int NULL,
  evolving_stage varchar NULL,
  evolves_from varchar NULL,
  competence_1_nom varchar NULL,
  competence_1_puissance varchar NULL,
  competence_2_nom varchar NULL,
  competence_2_puissance varchar NULL,
  faiblesse varchar NULL,
  retreat int NULL
);

