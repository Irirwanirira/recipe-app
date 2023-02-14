require "test_helper"

class AddUserToRecipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_user_to_recipe = add_user_to_recipes(:one)
  end

  test "should get index" do
    get add_user_to_recipes_url
    assert_response :success
  end

  test "should get new" do
    get new_add_user_to_recipe_url
    assert_response :success
  end

  test "should create add_user_to_recipe" do
    assert_difference("AddUserToRecipe.count") do
      post add_user_to_recipes_url, params: { add_user_to_recipe: { user_id_id: @add_user_to_recipe.user_id_id } }
    end

    assert_redirected_to add_user_to_recipe_url(AddUserToRecipe.last)
  end

  test "should show add_user_to_recipe" do
    get add_user_to_recipe_url(@add_user_to_recipe)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_user_to_recipe_url(@add_user_to_recipe)
    assert_response :success
  end

  test "should update add_user_to_recipe" do
    patch add_user_to_recipe_url(@add_user_to_recipe), params: { add_user_to_recipe: { user_id_id: @add_user_to_recipe.user_id_id } }
    assert_redirected_to add_user_to_recipe_url(@add_user_to_recipe)
  end

  test "should destroy add_user_to_recipe" do
    assert_difference("AddUserToRecipe.count", -1) do
      delete add_user_to_recipe_url(@add_user_to_recipe)
    end

    assert_redirected_to add_user_to_recipes_url
  end
end
