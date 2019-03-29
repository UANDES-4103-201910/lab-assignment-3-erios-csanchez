class Ticketorder < ApplicationRecord
  belongs_to :user
  belongs_to :event
  belongs_to :tickettype

end
