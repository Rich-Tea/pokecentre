require('pry-byebug')
require_relative('../models/pokemon.rb')
require_relative('../models/nurse.rb')


pkmn1 = Pokemon.new({
  "pkmn_name" => "Pikachu", "pkmn_type" => "Electric", "pkmn_level" => 3
  })

pkmn2 = Pokemon.new(
  {
  "pkmn_name" => "Umbreon", "pkmn_type" => "Dark", "pkmn_level" => 7
  }
)

pkmn3 = Pokemon.new(
  {
  "pkmn_name" => "Charizard", "pkmn_type" => "Fire", "pkmn_level" => 10
  }
)

pkmn4 = Pokemon.new(
{  "pkmn_name" => "Espeon", "pkmn_type" => "Psychic", "pkmn_level" => 5
  }
)

pkmn5 = Pokemon.new(
  { "pkmn_name" => "Mawile", "pkmn_type" => "Steel/Fairy", "pkmn_level" => 3
  }
)

pkmn6 = Pokemon.new(
  { "pkmn_name" => "Exeggutor", "pkmn_type" => "Grass/Psychic", "pkmn_level" => 3}
)




pkmn1.save
pkmn2.save
pkmn3.save
pkmn4.save
pkmn5.save

binding.pry
nil
