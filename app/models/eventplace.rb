class Eventplace < ApplicationRecord
	def last_attendance
		last_event = event.select(eventplace).order(stratdate).last
		events_in_place = ticketorder.select(last_event)
		number = events_in_place.lenght
		return number
		
	end
end
