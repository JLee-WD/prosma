class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :control_type, null: false, default: "Exo"
      t.string :material, null: false, default: "Carbon Fibre"
      t.integer :price, null: false, default: 1
      t.integer :quantity, null: false, default: 1

      t.timestamps
    end
  end
end
