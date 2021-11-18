class RemoveMaterialFromItems < ActiveRecord::Migration[6.0]
  def change
    remove_reference :items, :material, null: false, foreign_key: true
  end
end
