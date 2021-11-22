class CreateLimbs < ActiveRecord::Migration[6.0]
  def change
    create_table :limbs do |t|
      t.string :name

      t.timestamps
    end
  end
end
