require 'sinatra/base'
require 'shotgun'
# set :session_secret, 'super secret'

# shotgun ./lib/app.rb -p 4567 (4567 is port)

class Birthday < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/birthday' do
    @name = params[:input_name]
    @name
  end

  run! if app_file == $0

end
