class CreateCarriers < ActiveRecord::Migration
  def change
    create_table :carriers do |t|
      t.string :Name
      t.string :Code
      t.boolean :Active

      t.timestamps
    end
  end
end
