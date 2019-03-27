class User < ApplicationRecord
	def most_expensive_ticket_bought
		tickets = ticketorder.find_by user
		most = tickets.order: tickettype.price.last
		return most
	end
	def most_expensive_ticket_bought_between(start:datetime, end:datetime)
		tickets = ticketorder.find_by user
		tickets_date = tickets.where (.......
	
	end
	def last_event

	end	
end
