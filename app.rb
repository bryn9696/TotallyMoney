require 'sinatra/base'
require 'sinatra/flash'
require 'sinatra/reloader'
require './lib/cards'

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
    @employment_status = session[:employment_status]
    @earning = session[:earnings]
    @earnings = @earning.to_i
    @total = 0
    @liquidcard = Cards.new.liquidcard
    @studentlife = Cards.new.studentlife
    @anywherecard = Cards.new.anywherecard
    erb :home
  end



end