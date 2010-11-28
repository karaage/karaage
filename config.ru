$:.unshift File.expand_path('./', File.dirname(__FILE__))

require 'bundler'
Bundler.require

require 'app'

set :run, false
set :environment, ENV['RACK_ENV']

use Application
run Sinatra::Application

