class AddTypeRefToItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :items, :type, null: false, foreign_key: true
  end
end
