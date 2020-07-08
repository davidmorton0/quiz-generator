require 'sinatra'
require 'sinatra/activerecord'
require 'pry'

set :database, "sqlite3:project-name.sqlite3"

require './models'

get '/' do
  @person = "Bob"
  @theme = "Coding"
  @persons = ["Alice", "Bob", "Catherine", "Daniel"]
  @themes = ["Variables", "Methods", "Errors", "Constants", "Coding"]
  erb :index
end