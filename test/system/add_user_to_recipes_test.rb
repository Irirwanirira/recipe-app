require "application_system_test_case"

class AddUserToRecipesTest < ApplicationSystemTestCase
  setup do
    @add_user_to_recipe = add_user_to_recipes(:one)
  end

  test "visiting the index" do
    visit add_user_to_recipes_url
    assert_selector "h1", text: "Add user to recipes"
  end

  test "should create add user to recipe" do
    visit add_user_to_recipes_url
    click_on "New add user to recipe"

    fill_in "User id", with: @add_user_to_recipe.user_id_id
    click_on "Create Add user to recipe"

    assert_text "Add user to recipe was successfully created"
    click_on "Back"
  end

  test "should update Add user to recipe" do
    visit add_user_to_recipe_url(@add_user_to_recipe)
    click_on "Edit this add user to recipe", match: :first

    fill_in "User id", with: @add_user_to_recipe.user_id_id
    click_on "Update Add user to recipe"

    assert_text "Add user to recipe was successfully updated"
    click_on "Back"
  end

  test "should destroy Add user to recipe" do
    visit add_user_to_recipe_url(@add_user_to_recipe)
    click_on "Destroy this add user to recipe", match: :first

    assert_text "Add user to recipe was successfully destroyed"
  end
end
