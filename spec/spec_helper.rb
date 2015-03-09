$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

ENV["RAILS_ENV"] ||= 'test'

unless ENV['COVER'].empty?
  require 'simplecov'
  SimpleCov.root File.join(File.dirname(__FILE__), '..', 'lib')
  SimpleCov.start
end

require 'rspec'
require 'pry-byebug'
require 'rails/all'
require 'rspec/rails'

require "dummy/config/environment"

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
  config.mock_with :rspec
  config.use_transactional_fixtures = true
end
