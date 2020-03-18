require('sinatra')
require('sinatra/contrib/all')
require_relative('controllers/pokemon_controller.rb')
require_relative('controllers/nurse_controller.rb')
require_relative('models/pokemon.rb')
require_relative('models/nurse.rb')
also_reload('../models/*')


get '/' do
  erb(:index)
end
