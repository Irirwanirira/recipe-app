class CreateAddInventoryToInventoryFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :add_inventory_to_inventory_foods do |t|
      t.references :inventory_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
