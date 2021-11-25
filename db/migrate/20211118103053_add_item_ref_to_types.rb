class AddItemRefToTypes < ActiveRecord::Migration[6.0]
  def change
    add_reference :types, :item, null: false, foreign_key: true,  default: 1
  end
end
