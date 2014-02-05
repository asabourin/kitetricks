RACK_ENV = 'test' unless defined?(RACK_ENV)
require File.expand_path('../../config/boot', __FILE__)

require 'minitest/colorize'
require 'minitest/spec'
require 'minitest/autorun'
require 'database_cleaner'

class MiniTest::Unit::TestCase
  include Rack::Test::Methods

  # You can use this method to custom specify a Rack app
  # you want rack-test to invoke:
  #
  #   app Kitetricks::App
  #   app Kitetricks::App.tap { |a| }
  #   app(Kitetricks::App) do
  #     set :foo, :bar
  #   end
  #

  DatabaseCleaner[:sequel].strategy = :transaction

  def app(app = nil, &blk)
    @app ||= block_given? ? app.instance_eval(&blk) : app
    @app ||= Padrino.application
  end
end
