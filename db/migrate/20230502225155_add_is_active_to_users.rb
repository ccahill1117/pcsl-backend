class AddIsActiveToUsers < ActiveRecord::Migration[7.0]
  def up
    add_column :users, :is_active, :boolean, null: false, default: false
  end
  def down
    remove_column :users, :is_active
  end
end
