require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    @player_1 = params[:PlayerOne]
    @player_2 = params[:PlayerTwo]
    erb(:index)
  end

  post '/names' do
    @player_1 = params[:PlayerOne]
    @player_2 = params[:PlayerTwo]
    erb(:play)
  end

  run! if app_file == $0

end