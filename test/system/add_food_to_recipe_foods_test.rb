require "application_system_test_case"

class AddFoodToRecipeFoodsTest < ApplicationSystemTestCase
  setup do
    @add_food_to_recipe_food = add_food_to_recipe_foods(:one)
  end

  test "visiting the index" do
    visit add_food_to_recipe_foods_url
    assert_selector "h1", text: "Add food to recipe foods"
  end

  test "should create add food to recipe food" do
    visit add_food_to_recipe_foods_url
    click_on "New add food to recipe food"

    fill_in "Food id", with: @add_food_to_recipe_food.food_id_id
    click_on "Create Add food to recipe food"

    assert_text "Add food to recipe food was successfully created"
    click_on "Back"
  end

  test "should update Add food to recipe food" do
    visit add_food_to_recipe_food_url(@add_food_to_recipe_food)
    click_on "Edit this add food to recipe food", match: :first

    fill_in "Food id", with: @add_food_to_recipe_food.food_id_id
    click_on "Update Add food to recipe food"

    assert_text "Add food to recipe food was successfully updated"
    click_on "Back"
  end

  test "should destroy Add food to recipe food" do
    visit add_food_to_recipe_food_url(@add_food_to_recipe_food)
    click_on "Destroy this add food to recipe food", match: :first

    assert_text "Add food to recipe food was successfully destroyed"
  end
end
