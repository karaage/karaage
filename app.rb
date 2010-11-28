#require 'sinatra'
#require 'haml'
#require 'erubis'
require File.expand_path('../lib/karaage_atnd_feed.rb',  __FILE__)

class Application < Sinatra::Base
   def initialize(app)
      super(app)
   end

   get '/' do
	   @events = KaraageAtndFeed.new.get_events
	   erubis :index
   end
end
