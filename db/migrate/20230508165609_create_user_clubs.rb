class CreateUserClubs < ActiveRecord::Migration[7.0]
  def up
    remove_column :users, :club
    add_reference :users, :clubs, foreign_key: true
  end
  def down
    remove_reference :club_id
    add_column :users, :club, :string
  end
end
