class CreateAddUserToRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :add_user_to_recipes do |t|
      t.references :user_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
