require 'sinatra'
require 'shotgun'
set :session_secret, 'super secret'

# shotgun ./lib/app.rb -p 4567 (4567 is port)

get '/' do
  erb(:index)
end

post '/birthday' do
  "It's your birthday!!!"
end
