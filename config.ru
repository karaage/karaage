$:.unshift File.expand_path('./', File.dirname(__FILE__))

require 'app'

set :run, false
set :environment, ENV['RACK_ENV']

run Sinatra::Application

