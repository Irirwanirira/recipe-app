require "application_system_test_case"

class AddRecipeToRecipeFoodsTest < ApplicationSystemTestCase
  setup do
    @add_recipe_to_recipe_food = add_recipe_to_recipe_foods(:one)
  end

  test "visiting the index" do
    visit add_recipe_to_recipe_foods_url
    assert_selector "h1", text: "Add recipe to recipe foods"
  end

  test "should create add recipe to recipe food" do
    visit add_recipe_to_recipe_foods_url
    click_on "New add recipe to recipe food"

    fill_in "Recipe id", with: @add_recipe_to_recipe_food.recipe_id_id
    click_on "Create Add recipe to recipe food"

    assert_text "Add recipe to recipe food was successfully created"
    click_on "Back"
  end

  test "should update Add recipe to recipe food" do
    visit add_recipe_to_recipe_food_url(@add_recipe_to_recipe_food)
    click_on "Edit this add recipe to recipe food", match: :first

    fill_in "Recipe id", with: @add_recipe_to_recipe_food.recipe_id_id
    click_on "Update Add recipe to recipe food"

    assert_text "Add recipe to recipe food was successfully updated"
    click_on "Back"
  end

  test "should destroy Add recipe to recipe food" do
    visit add_recipe_to_recipe_food_url(@add_recipe_to_recipe_food)
    click_on "Destroy this add recipe to recipe food", match: :first

    assert_text "Add recipe to recipe food was successfully destroyed"
  end
end
