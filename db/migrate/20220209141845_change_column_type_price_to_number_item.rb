class ChangeColumnTypePriceToNumberItem < ActiveRecord::Migration[5.2]
  def up
    change_table :items do |t|
      t.change :price, :number
    end
  end

  def down
    change_table :items do |t|
      t.change :price, :decimal
    end
  end
end
