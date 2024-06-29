class CreateClothCoordinates < ActiveRecord::Migration[6.1]
  def change
    create_table :cloth_coordinates do |t|
      t.references :cloth, null: false, foreign_key: true
      t.references :coordinate, null: false, foreign_key: true

      t.timestamps
    end
  end
end
