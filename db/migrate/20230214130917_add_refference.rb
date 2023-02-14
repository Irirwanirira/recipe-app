class AddRefference < ActiveRecord::Migration[7.0]
  def change
    add_reference :inventories, :user, null: false, foreign_key: true
    add_reference :inventory_foods, :inventory, null: false, foreign_key: true
    add_reference :inventory_foods, :food, null: false, foreign_key: true
    add_reference :recipes, :user, null: false, foreign_key: true
    add_reference :recipe_foods, :food, null: false, foreign_key: true
    add_reference :recipe_foods, :recipe, null: false, foreign_key: true

  end
end
