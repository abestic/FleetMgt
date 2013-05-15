class AddManagerIdToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :Manager_ID, :integer
  end
end
