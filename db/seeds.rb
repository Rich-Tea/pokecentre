require('pry-byebug')
require_relative('../models/pokemon.rb')
require_relative('../models/nurse.rb')

Nurse.delete_all()
Pokemon.delete_all()

nurse1 = Nurse.new({
  "nurse_name" => "Joy"
  })

nurse2 = Nurse.new({
  "nurse_name" => "Misty"
  })

nurse3 = Nurse.new({
  "nurse_name" => "May"
  })

nurse1.save
nurse2.save
nurse3.save



pkmn1 = Pokemon.new({
  "pkmn_name" => "Pikachu", "pkmn_type" => "Electric", "pkmn_level" => 33, "trainer_contact" => "email", "treatment" => "Confused", "nurse_id" => nurse1.id
  }
)

pkmn2 = Pokemon.new({
  "pkmn_name" => "Umbreon", "pkmn_type" => "Dark", "pkmn_level" => 24, "trainer_contact" => "email", "treatment" => "Asleep", "nurse_id" => nurse1.id
  }
)

pkmn3 = Pokemon.new({
  "pkmn_name" => "Charizard", "pkmn_type" => "Fire", "pkmn_level" => 60, "trainer_contact" => "phone", "treatment" => "Poisoned", "nurse_id" => nurse2.id
  }
)

pkmn4 = Pokemon.new({
  "pkmn_name" => "Espeon", "pkmn_type" => "Psychic", "pkmn_level" => 15, "trainer_contact" => "phone", "treatment" => "Confused", "nurse_id" => nurse2.id
  }
)

pkmn5 = Pokemon.new({
  "pkmn_name" => "Mawile", "pkmn_type" => "Steel/Fairy", "pkmn_level" => 55, "trainer_contact" => "phone", "treatment" => "Paralysed", "nurse_id" => nurse2.id
  }
)

pkmn6 = Pokemon.new({
  "pkmn_name" => "Exeggutor", "pkmn_type" => "Grass/Psychic", "pkmn_level" => 47, "trainer_contact" => "SMS", "treatment" => "Burned", "nurse_id" => nurse3.id
  }
)

pkmn1.save
pkmn2.save
pkmn3.save
pkmn4.save
pkmn5.save
pkmn6.save


binding.pry
nil
