class CreatePlateChecks < ActiveRecord::Migration
  def change
    create_table :plate_checks do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
