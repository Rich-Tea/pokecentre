DROP TABLE pkmns;
DROP TABLE nurses;

CREATE TABLE nurses (
  id SERIAL primary key,
  nurse_name VARCHAR(255)
);

CREATE TABLE pkmns (
  id SERIAL primary key,
  pkmn_name VARCHAR(255),
  pkmn_type VARCHAR(255),
  pkmn_level INT,
  trainer_contact INT,
  treatment VARCHAR(255)
);
