class DropLimbsTable < ActiveRecord::Migration[6.0]
def up
  drop_table :limbs
end
end
