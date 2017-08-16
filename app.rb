require 'sinatra'
require 'shotgun'

get '/' do
  "Hello"
end


get '/random-cat' do
  @name = ['Lionel','Brian','Stephanie'].sample
  erb(:index)
end

get '/naming-cat' do
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  @colour = params[:colour]
  erb(:other)
end
