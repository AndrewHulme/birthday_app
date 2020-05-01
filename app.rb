require 'sinatra/base'
require 'shotgun'
# set :session_secret, 'super secret'

# shotgun ./lib/app.rb -p 4567 (4567 is port)

class Birthday < Sinatra::Base
  configure(:development) { set :session_secret, 'set' }
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/store_data' do
    session[:input_name] = params[:input_name]
    session[:input_day] = params[:input_day]
    session[:input_month] = params[:input_month]

    redirect '/birthday'
  end

  get '/birthday' do
    @input_name = session[:input_name]
    @input_day = session[:input_day]
    @input_month = session[:input_month]
    erb(:birthday)
  end

  run! if app_file == $0

end
