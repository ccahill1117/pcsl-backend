class CleanUpFields < ActiveRecord::Migration[7.0]
  def up
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address_1, :string
    add_column :users, :address_2, :string


  end

  def down
  end
end
