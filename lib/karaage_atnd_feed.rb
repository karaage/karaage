# -*- coding: utf-8 -*-

require 'atnd4r'

class KaraageAtndFeed
	def get_events
		Atnd4r::get_event_list({:keyword_or => '唐揚げ,karaage'}).events
	end
	
	def get_events_with_title
		events = get_events
		events.select{|e| e.title =~ /唐揚げ/ or e.title =~ /karaage/}
	end
end
