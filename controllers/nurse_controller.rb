require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/pokemon.rb')
require_relative('../models/nurse.rb')
also_reload('./models/*')

get '/nurses' do
  @nurses = Nurse.all
  erb(:'nurses/index')
end

get '/nurses/add' do # new
  erb(:'nurses/new')
end

post '/nurses/add' do # create
  @nurse = Nurse.new(params)
  @nurse.save()
  erb(:'nurses/create')
end

get '/nurses/:id' do
  @nurse = Nurse.find(params['id'].to_i)
  erb(:'witches/show')
end

post '/nurses/:id/delete' do # delete
  nurse = Nurse.find(params[:id])
  nurse.delete()
  redirect to '/nurses'
end
