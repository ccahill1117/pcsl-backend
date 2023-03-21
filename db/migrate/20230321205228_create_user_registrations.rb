class CreateUserRegistrations < ActiveRecord::Migration[7.0]
  def up
    create_table :user_registrations do |t|
      # might want a registration with no user record if balancing registrations for number of registrations needed
      t.references :user, null: true, index: true, foreign_key: true
      # need to add seasons table eventually and join on seasons (winter 2023 etc)
      t.timestamps
    end
  end
  def down
    drop_table :user_registrations
  end
end
