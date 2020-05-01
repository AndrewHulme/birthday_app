require 'sinatra/base'
require 'shotgun'
# set :session_secret, 'super secret'

# shotgun ./lib/app.rb -p 4567 (4567 is port)

class Birthday < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/store_data' do
    session[:input_name] = params[:input_name]
    redirect '/birthday'
  end

  get '/birthday' do
    session[:input_name]
  end

  run! if app_file == $0

end
