class DropMaterialsTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :materials
  end
end
