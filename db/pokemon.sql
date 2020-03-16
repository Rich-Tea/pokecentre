DROP TABLE pkmns;
DROP TABLE trainers;

CREATE TABLE pkmns (
  id SERIAL primary key,
  pkmn_name VARCHAR(255),
  pkmn_type VARCHAR(255),
  pkmn_dob INT
);

CREATE TABLE trainers (
  id SERIAL primary key,
  name VARCHAR(255),
  notes VARCHAR(255)
)
