DROP TABLE pkmns;
DROP TABLE nurses;

CREATE TABLE pkmns (
  id SERIAL primary key,
  pkmn_name VARCHAR(255),
  pkmn_type VARCHAR(255),
  pkmn_level INT
);

CREATE TABLE nurses (
  id SERIAL primary key,
  name VARCHAR(255),
  notes VARCHAR(255)
)
