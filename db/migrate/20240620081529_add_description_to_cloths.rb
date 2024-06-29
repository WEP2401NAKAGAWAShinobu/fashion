class AddDescriptionToCloths < ActiveRecord::Migration[6.1]
  def change
    add_column :cloths, :description, :text
  end
end
