class User < ApplicationRecord
	has_many :Ticketorder
	def most_expensive_ticket_bought
		ticketuser = user.Ticketorder
		most = ticketuser.order(Tickettype.price: :desc).limit(1)
		return most
	end
	def most_expensive_ticket_bought_between(start:datetime, end:datetime)
		ticketuser = user.Ticketorder
		#tickets_date = tickets.where
	
	end
	def last_event

	end	
end
