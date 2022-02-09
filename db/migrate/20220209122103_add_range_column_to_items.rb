class AddRangeColumnToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :range, :jsonb
  end
end
