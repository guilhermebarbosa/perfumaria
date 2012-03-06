class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.text :operation

      t.timestamps
    end
  end
end
