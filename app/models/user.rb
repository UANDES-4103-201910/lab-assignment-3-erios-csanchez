class User < ApplicationRecord
	has_many :Ticketorder
	def most_expensive_ticket_bought
		ticketuser = user.Ticketorder
		#ticketuser.select(tickettype).order(price: :desc).limit(1) OTRA FORMA NOSE SI ES
		return ticketuser.order(price: :desc).limit(1)

	end
	def most_expensive_ticket_bought_between(datestart:datetime, dateend:datetime)
		ticketuser = user.Ticketorder
		return ticketuser.where(startdate: params[:datestart]..params[:dateend])

	end
	def last_event
		ticketuser = user.Ticketorder
		lastticket = ticketuser.order(startdate: :desc).limit(1)
		return lastticket.event.name

	end	
end
