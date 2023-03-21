class CreateDropdownOptions < ActiveRecord::Migration[7.0]
  def up
    create_table :dropdown_options do |t|
      t.string :code_key
      t.string :optional_value
      t.string :optional_value_2
      t.string :optional_value_3
      t.timestamps
    end
  end
  def down
    drop_table :dropdown_options
  end
end
