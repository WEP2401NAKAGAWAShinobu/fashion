class CreateCoordinates < ActiveRecord::Migration[6.1]
  def change
    create_table :coordinates do |t|
      t.string :memo, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end


