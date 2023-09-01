class UniqueRegsOnSeasonsAndUser < ActiveRecord::Migration[7.0]
  def change
    add_index :user_registrations, [:user_id, :seasons_id], unique: true
  end
end
