require File.expand_path('../lib/karaage_atnd_feed.rb',  __FILE__)

class Application < Sinatra::Base
   def initialize(app)
      super(app)
      set :public, File.dirname(__FILE__) + '/public'
   end

   get '/' do
	   @events = KaraageAtndFeed.new.get_events
	   erubis :index
   end
end
