require 'sinatra/base'
require 'sinatra/flash'
require 'sinatra/reloader'
require './lib/cards'
# require './lib/liquidcard'

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
    # @studentlife = Studentlife.valid?(session[:employment_status])
    redirect '/home'
  end

  get '/home' do
    @name = session[:name]
    @employment_status = session[:employment_status]
    @earning = session[:earnings]
    @earnings = @earning.delete('£').to_i
    @total = 0
    @selected_total = 0
    @liquidcard = Cards.new.liquidcard
    @studentlife = Cards.new.studentlife
    @anywherecard = Cards.new.anywherecard
    @ac = 300
    @sl = 1200
    @lc = 3000
    erb :home
  end

  post '/user_choice' do
    session[:ACselected] = params[:ACselected]
    session[:SLselected] = params[:SLselected]
    session[:LCselected] = params[:LCselected]
    redirect :home
  end



end