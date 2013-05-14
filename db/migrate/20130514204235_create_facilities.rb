class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.string :Name
      t.string :Address_1
      t.string :Address_2
      t.string :City
      t.integer :State_ID
      t.string :Postal_Code
      t.integer :Station_ID
      t.integer :Carrier_ID
      t.text :Routing_Notes
      t.boolean :Active

      t.timestamps
    end
  end
end
