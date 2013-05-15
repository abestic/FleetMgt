class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.string :First_Name
      t.string :Last_Name
      t.string :email
      t.boolean :Active

      t.timestamps
    end
  end
end
