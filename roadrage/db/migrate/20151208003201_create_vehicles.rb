class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :plate_number
      t.string :make
      t.string :model
      t.string :color
      t.integer :year
      t.text :description

      t.timestamps null: false
    end
  end
end
