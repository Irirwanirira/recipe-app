class CreateAddRecipeToRecipeFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :add_recipe_to_recipe_foods do |t|
      t.references :recipe_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
