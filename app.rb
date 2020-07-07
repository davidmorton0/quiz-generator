require 'sinatra'
require 'sinatra/activerecord'

set :database, "sqlite3:project-name.sqlite3"

require './models'

get '/' do
  @users = User.all
  erb :test
end