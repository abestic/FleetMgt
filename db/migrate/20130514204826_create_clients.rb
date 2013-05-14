class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :Name
      t.integer :LAM_ID
      t.boolean :Active

      t.timestamps
    end
  end
end
