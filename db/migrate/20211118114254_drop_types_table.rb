class DropTypesTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :types
  end
end
