require 'sinatra'
require 'haml'
require 'erubis'


get '/' do
   events = KaraageAtndFeed.new.get_events
	erubis :index
end
