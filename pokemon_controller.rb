require('sinatra')
require('sinatra/contrib/all')
require_relative('./db/sql_runner.rb')
require_relative('./models/pokemon.rb')
require_relative('./models/nurse.rb')
also_reload('./models/*')



get '/pokemon' do
  @pokemon = Pokemon.all()
  erb(:'pokemon/index')
end
