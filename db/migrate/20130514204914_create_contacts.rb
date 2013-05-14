class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :First_Name
      t.string :Last_Name
      t.string :email
      t.integer :Client_ID
      t.integer :User_ID
      t.boolean :Active

      t.timestamps
    end
  end
end
