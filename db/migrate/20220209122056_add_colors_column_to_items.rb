class AddColorsColumnToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :colors, :text, array: true
  end
end
