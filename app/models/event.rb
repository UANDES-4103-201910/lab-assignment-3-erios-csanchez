class Event < ApplicationRecord
	def most_ticket_sold
		most_repeated = ticketorder.select(:event).mode
		return most_repeated
	end
	def highest_revenue
		
	end
end
