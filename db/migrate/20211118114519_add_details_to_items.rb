class AddDetailsToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :material, :string, null: false,  default: ""
    add_column :items, :limb, :string, null: false,  default: ""
    add_column :items, :type, :string, null: false,  default: ""
  end
end
