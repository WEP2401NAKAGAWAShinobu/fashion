class CreateCloths < ActiveRecord::Migration[6.1]
  def change
    create_table :cloths do |t|
      t.string :name, null: false
      t.string :category, null: false
      t.references :user, null: false, foreign_key: true#referencesを使う場合はuser_idと記述しない。
      t.timestamps
    end
  end
end