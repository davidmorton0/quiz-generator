ENV["RACK_ENV"] ||= "test"

require File.expand_path("../../config/environment", __FILE__)
require 'rspec'
require './app.rb'
require 'rack/test'

module RSpecMixin
  include Rack::Test::Methods
  def app() ApplicationController end
end

RSpec.configure { |c| c.include RSpecMixin }



=begin
require 'pry'
Bundler.require

=end