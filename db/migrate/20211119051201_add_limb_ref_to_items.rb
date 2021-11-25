class AddLimbRefToItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :items, :limb, null: false, foreign_key: true, default: 1
  end
end
