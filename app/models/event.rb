class Event < ApplicationRecord
  has_many :ticketorders
	belongs_to :eventplace
	def most_ticket_sold
		most_repeated = ticketorder.select(:event).mode
		return most_repeated
	end
	def highest_revenue
		
	end
end
