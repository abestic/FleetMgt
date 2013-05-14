class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :Name
      t.string :Code

      t.timestamps
    end
  end
end
