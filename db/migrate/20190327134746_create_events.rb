class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :descriptiom
      t.datetime :startdate
      t.references :eventplace

      t.timestamps
    end
  end
end
