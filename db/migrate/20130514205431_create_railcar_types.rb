class CreateRailcarTypes < ActiveRecord::Migration
  def change
    create_table :railcar_types do |t|
      t.string :Name
      t.text :Description
      t.boolean :Active

      t.timestamps
    end
  end
end
