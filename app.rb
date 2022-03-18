require 'sinatra/base'
require 'sinatra/flash'
require 'sinatra/reloader'

class TotallyMoney < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions
  register Sinatra::Flash

  get '/' do
    erb :index
  end

  post '/user_details' do
    session[:name] = params[:name]
    session[:financial_history] = params[:financial_history]
    session[:employment_status] = params[:employment_status]
    session[:earnings] = params[:earnings]
    session[:postcode] = params[:postcode]
    session[:house_number] = params[:house_number]
    redirect '/home'
  end

  get '/home' do
    @name = session[:name]
    erb :home
  end

end