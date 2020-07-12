require 'sinatra'
require File.expand_path("../config/environment", __FILE__)
require_relative 'app'

Rack::Handler.default.run(ApplicationController, :Port => 8080)