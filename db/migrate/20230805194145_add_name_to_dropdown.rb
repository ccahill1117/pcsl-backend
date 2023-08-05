class AddNameToDropdown < ActiveRecord::Migration[7.0]
  def up
    add_column :dropdown_options, :name, :string
  end
  def down
    remove_column :dropdown_options, :name
  end
end
