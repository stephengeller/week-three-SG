require 'sinatra'
require 'shotgun'

get '/' do
  "Hello"
end

get '/secret' do
  "can you see this without reloading"
end

get '/blog' do
  "loooook im hosting a blog"
end

get '/sausage'do
  "00000000000"
end

get '/cat' do
  @nomm = ['Lionel','Brian','Stephanie'].sample
  erb(:index)
end
