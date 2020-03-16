DROP TABLE pkmns;
DROP TABLE owners;

CREATE TABLE pkmns (
  id SERIAL primary key,
  pkmn_name VARCHAR(255),
  pkmn_type VARCHAR(255),
  pkmn_dob INT
);

CREATE TABLE owners (
  id SERIAL primary key,
  name VARCHAR(255),
  notes VARCHAR(255)
)
