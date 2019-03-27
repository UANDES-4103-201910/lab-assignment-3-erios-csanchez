class CreateTicketorders < ActiveRecord::Migration[5.2]
  def change
    create_table :ticketorders do |t|
      t.references :tickettype
      t.references :user
      t.references :event
      t.integer :amountpayed

      t.timestamps
    end
  end
end
