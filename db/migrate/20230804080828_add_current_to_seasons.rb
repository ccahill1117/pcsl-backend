class AddCurrentToSeasons < ActiveRecord::Migration[7.0]
  def up
    add_column :seasons, :is_current?, :boolean, default: false, null: false
  end
  def down
    remove_column :seasons, :is_current?
  end
end
