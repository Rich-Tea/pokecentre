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
  trainer_contact VARCHAR(255),
  treatment VARCHAR(255),
  nurse_id INT REFERENCES nurses(id) ON DELETE CASCADE
);
