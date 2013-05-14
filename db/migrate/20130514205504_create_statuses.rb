class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :Code
      t.text :Description

      t.timestamps
    end
  end
end
