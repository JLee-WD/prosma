class RemoveLimbFromItem < ActiveRecord::Migration[6.0]
  def change
    remove_reference :items, :limb, null: false, foreign_key: true
  end
end
