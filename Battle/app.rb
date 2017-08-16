require 'sinatra/base'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    @player_1 = params[:PlayerOne]
    @player_2 = params[:PlayerTwo]
    erb(:index)
  end

  post '/names' do
    session[:player_1] = params[:PlayerOne]
    session[:player_2] = params[:PlayerTwo]
    erb(:play)
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    @player_1_hp = 100
    erb(:play)
  end

  run! if app_file == $0

end
