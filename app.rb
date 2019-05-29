require 'sinatra'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  get '/test' do
    'Testing infrastructure working!'
  end

  post '/names' do
   @player_1 = params[:player_1]
   @player_2 = params[:player_2]
   erb(:play)
 end

end
