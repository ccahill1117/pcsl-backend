class AddSeasonToUserReg < ActiveRecord::Migration[7.0]
  def up
    add_reference :user_registrations, :seasons, foreign_key: true
  end
  def down
    remove_reference :seasons_id
  end
end
