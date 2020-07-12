require 'bundler'
Bundler.require

#configure :development do
#  set :database, 'sqlite3:db/database.db'
#end

# get the path of the root of the app
APP_ROOT = File.expand_path("..", __dir__)

# require the controller(s)
Dir.glob(File.join(APP_ROOT, 'controllers', '*.rb')).each { |file| require file }

# require the model(s)
Dir.glob(File.join(APP_ROOT, 'models', '*.rb')).each { |file| require file }

# require database configurations
# require File.join(APP_ROOT, 'config', 'database')