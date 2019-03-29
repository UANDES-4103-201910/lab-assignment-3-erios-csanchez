class Event < ApplicationRecord
  has_many :ticketorders
	has_many :tickettypes
	belongs_to :eventplace
	def most_ticket_sold
		most_repeated = Ticketorder.select(event).mode
		return most_repeated.event
	end
	def highest_revenue
		return Tickettype.select(event).group(event).order("sum(price)": :desc).limit(1)
		
	end
end
