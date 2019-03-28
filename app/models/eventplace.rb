class Eventplace < ApplicationRecord
	has_many :events
	def last_attendance
		last_event = event.select(Eventplace).order(stratdate: :desc).limit(1)
		events_in_place = Ticketorder.select(last_event)
		number = events_in_place.length
		return number
		
	end
end
