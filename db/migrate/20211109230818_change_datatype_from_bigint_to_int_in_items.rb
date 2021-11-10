class ChangeDatatypeFromBigintToIntInItems < ActiveRecord::Migration[6.0]
  def change
    change_column :items, :material_id, :integer
    change_column :items, :limb_id, :integer
    change_column :items, :type_id, :integer
  end
end
