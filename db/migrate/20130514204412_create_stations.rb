class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :City
      t.integer :State_ID
      t.boolean :Active

      t.timestamps
    end
  end
end
