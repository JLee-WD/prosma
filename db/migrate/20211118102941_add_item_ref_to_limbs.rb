class AddItemRefToLimbs < ActiveRecord::Migration[6.0]
  def change
    add_reference :limbs, :item, null: false, foreign_key: true, default: 1
  end
end
