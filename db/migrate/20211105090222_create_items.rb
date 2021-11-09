class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :limb, null: false
      t.string :type

      t.timestamps
    end
  end
end
