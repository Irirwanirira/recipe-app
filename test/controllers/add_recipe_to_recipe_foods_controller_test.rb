require "test_helper"

class AddRecipeToRecipeFoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_recipe_to_recipe_food = add_recipe_to_recipe_foods(:one)
  end

  test "should get index" do
    get add_recipe_to_recipe_foods_url
    assert_response :success
  end

  test "should get new" do
    get new_add_recipe_to_recipe_food_url
    assert_response :success
  end

  test "should create add_recipe_to_recipe_food" do
    assert_difference("AddRecipeToRecipeFood.count") do
      post add_recipe_to_recipe_foods_url, params: { add_recipe_to_recipe_food: { recipe_id_id: @add_recipe_to_recipe_food.recipe_id_id } }
    end

    assert_redirected_to add_recipe_to_recipe_food_url(AddRecipeToRecipeFood.last)
  end

  test "should show add_recipe_to_recipe_food" do
    get add_recipe_to_recipe_food_url(@add_recipe_to_recipe_food)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_recipe_to_recipe_food_url(@add_recipe_to_recipe_food)
    assert_response :success
  end

  test "should update add_recipe_to_recipe_food" do
    patch add_recipe_to_recipe_food_url(@add_recipe_to_recipe_food), params: { add_recipe_to_recipe_food: { recipe_id_id: @add_recipe_to_recipe_food.recipe_id_id } }
    assert_redirected_to add_recipe_to_recipe_food_url(@add_recipe_to_recipe_food)
  end

  test "should destroy add_recipe_to_recipe_food" do
    assert_difference("AddRecipeToRecipeFood.count", -1) do
      delete add_recipe_to_recipe_food_url(@add_recipe_to_recipe_food)
    end

    assert_redirected_to add_recipe_to_recipe_foods_url
  end
end
