class AddPhoneToUsers < ActiveRecord::Migration[7.0]
  def up
    add_column :users, :phone, :string
  end
  def down
    remove_column :users, :phone
  end
end
