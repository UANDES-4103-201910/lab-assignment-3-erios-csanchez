class CreateTickettypes < ActiveRecord::Migration[5.2]

  def change
    create_table :tickettypes do |t|
      t.references :event
      t.integer :price
      t.string :category

      t.timestamps
    end
  end
end
