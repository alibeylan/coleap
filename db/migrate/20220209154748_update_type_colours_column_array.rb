class UpdateTypeColoursColumnArray < ActiveRecord::Migration[5.2]
  def up
    change_table :items do |t|
      t.change :colors, :string, array: true 
    end
  end

  def down
    change_table :items do |t|
      t.change :colors, :text
    end
  end
end
