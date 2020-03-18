require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/pokemon.rb')
require_relative('../models/nurse.rb')
also_reload('./models/*')



get '/pokemon' do
  @pokemon = Pokemon.all()
  erb(:'pokemon/index')
end

get '/pokemon/new' do # new
  erb(:'pokemon/new')
end

get '/pokemon/add' do # create
  @pokemon = Pokemon.new(params)
  @pokemon.save()
  erb(:'pokemon/create')
end

get '/pokemon/:id' do
  @pokemon = Pokemon.find(params['id'].to_i)
  erb(:'pokemon/show')
end

get '/pokemon/:id/treatment-notes' do
  @pokemon = Pokemon.find(params['id'])
  @nurses = Nurse.all()
  erb(:'pokemon/treatment')
end

post '/pokemon/:id/assign' do
  pokemon = Pokemon.new(params)
  pokemon.update()
  redirect to '/pokemon'
end

get '/pokemon/:id/edit' do # edit
  @pokemon = Pokemon.find(params[:id])
  erb(':pokemon/edit')
end

post '/pokemon/:id/edit' do # update
  Pokemon.new(params).update
  redirect to '/pokemon'
end

post '/pokemon/:id/delete' do # delete
  pokemon = Pokemon.find(params[:id])
  pokemon.delete()
  redirect to '/pokemon'
end
