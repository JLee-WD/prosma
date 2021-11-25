class RemoveDetailsFromItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :first_name, :string, null: false, default: ""
    remove_column :items, :last_name, :string, null: false, default: ""
  end
end
