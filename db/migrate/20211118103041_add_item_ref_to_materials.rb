class AddItemRefToMaterials < ActiveRecord::Migration[6.0]
  def change
    add_reference :materials, :item, null: false, foreign_key: true,  default: 1
  end
end
