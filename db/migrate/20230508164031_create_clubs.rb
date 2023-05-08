class CreateClubs < ActiveRecord::Migration[7.0]
  def up
    create_table :clubs do |t|
      t.string :name 
      t.string :address
      t.string :website
      t.string :abbreviation
      t.timestamps
    end
  end
  def down
    drop_table :clubs
  end
end
