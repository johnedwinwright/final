class CreateRages < ActiveRecord::Migration
  def change
    create_table :rages do |t|
      t.string :plate_number
      t.integer :vehicleid
      t.text :rage
      t.text :title

      t.timestamps null: false
    end
  end
end
