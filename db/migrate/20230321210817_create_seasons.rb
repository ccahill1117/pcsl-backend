class CreateSeasons < ActiveRecord::Migration[7.0]
  def up
    create_table :seasons do |t|
      t.name
      # need dropdown option here for is it friendly type play season or competitive 
      t.timestamps
    end
  end
  def down
    drop_table :seasons
  end
end
