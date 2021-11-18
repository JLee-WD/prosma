class ChangeColumnNameItems < ActiveRecord::Migration[6.0]
  def change
    rename_column :items, :type, :control_type
  end
end
