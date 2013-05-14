class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :Contact_ID
      t.integer :Facility_ID
      t.integer :Railcar_Demand
      t.integer :Railcar_Type_ID
      t.integer :Status_ID

      t.timestamps
    end
  end
end
