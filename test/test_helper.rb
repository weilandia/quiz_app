ENV["RACK_ENV"] ||= "test"

require 'bundler'
Bundler.require

require File.expand_path('../../config/environment', __FILE__)
require 'minitest/autorun'
require 'minitest/pride'
require 'database_cleaner'

module TestHelpers
  def setup
    DatabaseCleaner.start
  end
  def teardown
    DatabaseCleaner.clean
    super
  end
  def app
   RushHour::Server
  end
end
