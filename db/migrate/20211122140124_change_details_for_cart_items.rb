class ChangeDetailsForCartItems < ActiveRecord::Migration[6.0]
  def change
    change_column_null :cart_items, :cart_id, true
  end
end
