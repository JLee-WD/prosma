class ChangeDetailsOfItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :seller, :string
    add_column :items, :quantity, :integer, default: 1
  end
end
