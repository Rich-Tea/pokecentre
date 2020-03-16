require('pry-byebug')
require_relative('../models/pokemon.rb')
require_relative('../models/nurse.rb')


pkmn1 = Pokemon.new(
  {
  "pkmn_name" => "Pikachu", "pkmn_type" => "Electric", "pkmn_age" => 3
  })

pkmn2 = Pokemon.new(
  {
  "pkmn_name" => "Umbreon", "pkmn_type" => "Dark", "pkmn_age" => 7
  }
)

pkmn3 = Pokemon.new(
  {
  "pkmn_name" => "Charizard", "pkmn_type" => "Fire", "pkmn_age" => 10
  }
)




pkmn1.save
pkmn2.save
pkmn3.save


binding.pry
nil
