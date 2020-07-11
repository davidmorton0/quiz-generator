require 'sinatra'
require_relative 'app'
require File.expand_path("../config/environment", __FILE__)

Rack::Handler.default.run(ApplicationController, :Port => 8080)