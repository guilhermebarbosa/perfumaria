class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.text :description_left
      t.text :description_right

      t.timestamps
    end
  end
end
