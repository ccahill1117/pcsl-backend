class AddFieldsUserRegistration < ActiveRecord::Migration[7.0]
  def up
    add_column :user_registrations, :division, :integer
    add_column :user_registrations, :rank, :integer
    add_column :user_registrations, :regular, :boolean, default: false, null: false
    add_column :user_registrations, :initials, :string
    add_column :user_registrations, :has_paid, :boolean, default: false, null: false
    add_column :user_registrations, :is_captain, :boolean, default: false, null: false
  end
  def down
    remove_column :user_registrations, :division
    remove_column :user_registrations, :rank
    remove_column :user_registrations, :regular
    remove_column :user_registrations, :initials
    remove_column :user_registrations, :has_paid 
    remove_column :user_registrations, :is_captain
  end
end
