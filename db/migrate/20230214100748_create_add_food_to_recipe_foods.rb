class CreateAddFoodToRecipeFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :add_food_to_recipe_foods do |t|
      t.references :food_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
