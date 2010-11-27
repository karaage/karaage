require 'sinatra'
require 'haml'
require 'erubis'


get '/' do
	erubis :index
end
