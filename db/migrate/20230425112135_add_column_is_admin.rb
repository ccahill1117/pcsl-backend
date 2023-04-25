class AddColumnIsAdmin < ActiveRecord::Migration[7.0]
  def up
    add_column :users, :is_admin, :boolean, null: false, default: false
  end
  def down
    remove_column :users, :is_admin
  end
end
