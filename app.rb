set :method_override, true
set :public_folder, File.join(APP_ROOT, 'app', 'public')
set :port, 8080
set :root, File.dirname(__FILE__)
set :views, File.dirname(__FILE__) +        '/views'
set :database, { adapter: 'sqlite3', database: ':memory:' }

class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  
  def initialize
    super()

    ActiveRecord::Schema.define do
      create_table :people do |table|
        table.column :name, :string
      end
      
      create_table :themes do |table|
        table.column :name, :string
      end
    end
    
    ['Variables', 'Methods', 'Errors', 'Constants', 'Coding'].each do |theme|
      Theme.create!(:name => theme)
    end
    
    ['Alice', 'Bob', 'Catherine', 'Daniel'].each do |person|
      Person.create!(:name => person)
    end
  end
  
  get '/' do
    get_info
    erb :index
  end
  
  post '/set_quiz' do
    'set a quiz'
  end
  
  post '/add_person' do
    Person.create(:name => params[:name])
    redirect '/'
  end
  
  post '/add_theme' do
    Theme.create(:name => params[:theme])
    redirect '/'
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
    Person.all.map { |person| person.name }
  end
  
  def themes
    Theme.all.map { |theme| theme.name }
  end
end