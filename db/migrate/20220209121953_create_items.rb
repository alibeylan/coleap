class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :make
      t.string :model
      t.decimal :price
      t.string :photo

      t.timestamps
    end
  end
end
