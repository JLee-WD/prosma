class RemoveMaterialAndLimbAndTypeFromItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :limb, :string
    remove_column :items, :material, :string
    remove_column :items, :type, :string
  end
end
