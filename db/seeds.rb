require('pry-byebug')
require_relative('../models/pokemon.rb')
require_relative('../models/nurse.rb')

Pokemon.delete_all()
Nurse.delete_all()

pkmn1 = Pokemon.new({
  "pkmn_name" => "Pikachu", "pkmn_type" => "Electric", "pkmn_level" => 33
  }
)

pkmn2 = Pokemon.new({
  "pkmn_name" => "Umbreon", "pkmn_type" => "Dark", "pkmn_level" => 24
  }
)

pkmn3 = Pokemon.new({
  "pkmn_name" => "Charizard", "pkmn_type" => "Fire", "pkmn_level" => 60
  }
)

pkmn4 = Pokemon.new({
  "pkmn_name" => "Espeon", "pkmn_type" => "Psychic", "pkmn_level" => 15
  }
)

pkmn5 = Pokemon.new({
  "pkmn_name" => "Mawile", "pkmn_type" => "Steel/Fairy", "pkmn_level" => 55
  }
)

pkmn6 = Pokemon.new({
  "pkmn_name" => "Exeggutor", "pkmn_type" => "Grass/Psychic", "pkmn_level" => 47
  }
)




pkmn1.save
pkmn2.save
pkmn3.save
pkmn4.save
pkmn5.save
pkmn6.save

nurse1 = Nurse.new({
  "nurse_name" => "Joy"
  })


nurse1.save


binding.pry
nil
