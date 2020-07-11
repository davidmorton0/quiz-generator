require 'sinatra'
require 'pry'

get '/' do
  get_info
  erb :index
end

post '/set_quiz' do
  'set a quiz'
end

post '/add_person' do
  get_info
  @persons.push(params[:name])
  erb :index
end

post '/add_theme' do
  get_info
  @themes.push(params[:theme])
  erb :index
end

def generate_person
  @persons.sample
end

def generate_theme
  @themes.sample
end

def get_info
  @persons = persons
  @person = generate_person
  @themes = themes
  @theme = generate_theme
end

def persons
  ["Alice", "Bob", "Catherine", "Daniel"]
end

def themes
  ["Variables", "Methods", "Errors", "Constants", "Coding"]
end