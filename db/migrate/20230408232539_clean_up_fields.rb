class CleanUpFields < ActiveRecord::Migration[7.0]
  def up
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address_1, :string
    add_column :users, :address_2, :string
    add_column :users, :state, :string
    add_column :users, :zip_code, :string
    add_column :users, :work_phone, :string
    add_column :users, :home_phone, :string
    add_column :users, :cell_phone, :string
    add_column :users, :gender, :string
    add_column :users, :date_of_birth, :date
    # 
    add_column :users, :club, :string
    add_column :users, :us_squash_id, :string
  end

  def down
    remove_column :users, :first_name
    remove_column :users, :last_name
    remove_column :users, :address_1
    remove_column :users, :address_2
    remove_column :users, :state
    remove_column :users, :zip_code
    remove_column :users, :work_phone
    remove_column :users, :home_phone
    remove_column :users, :cell_phone
    remove_column :users, :gender
    remove_column :users, :date_of_birth
    # 
    remove_column :users, :club
    remove_column :users, :us_squash_id
  end
end
