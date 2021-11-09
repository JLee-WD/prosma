class AddMaterialToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :material, :string, null: false
  end
end
