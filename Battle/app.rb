require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:PlayerOne])
    $player_2 = Player.new(params[:PlayerTwo])
    erb(:play)
    redirect '/play'
  end

  get '/play' do

    @player_1_hp = 100
    @player_2_hp = 100
    erb(:play)
  end

  post '/attackP2' do
  
    erb(:attackP2)
  end

  run! if app_file == $PROGRAM_NAME
end
