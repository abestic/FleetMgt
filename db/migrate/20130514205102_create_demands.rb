class CreateDemands < ActiveRecord::Migration
  def change
    create_table :demands do |t|
      t.integer :Order_ID
      t.integer :Railcar_ID

      t.timestamps
    end
  end
end
