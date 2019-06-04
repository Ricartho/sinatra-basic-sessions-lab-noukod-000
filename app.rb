require_relative 'config/environment'

class App < Sinatra::Base
  configure do 
    enable :sessions
    set :session_secret, "Ricarthofranck25071990"
  end 
  
  get '/' do 
    erb :index
  end 
  
  post '/checkout' do 
    session["item"] = params[:item]
    @session_val = session
    erb :display
  end 
end