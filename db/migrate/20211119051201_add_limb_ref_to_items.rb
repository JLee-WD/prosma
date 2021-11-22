class AddLimbRefToItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :items, :limb, null: false, foreign_key: true
  end
end
