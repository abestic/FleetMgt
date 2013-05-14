class CreateRailcars < ActiveRecord::Migration
  def change
    create_table :railcars do |t|
      t.string :Initial
      t.string :Number
      t.integer :Railcar_Type_ID
      t.integer :Inside_Length
      t.integer :Capacity
      t.integer :GWR
      t.boolean :Active

      t.timestamps
    end
  end
end
