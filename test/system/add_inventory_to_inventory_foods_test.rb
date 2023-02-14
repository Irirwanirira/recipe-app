require "application_system_test_case"

class AddInventoryToInventoryFoodsTest < ApplicationSystemTestCase
  setup do
    @add_inventory_to_inventory_food = add_inventory_to_inventory_foods(:one)
  end

  test "visiting the index" do
    visit add_inventory_to_inventory_foods_url
    assert_selector "h1", text: "Add inventory to inventory foods"
  end

  test "should create add inventory to inventory food" do
    visit add_inventory_to_inventory_foods_url
    click_on "New add inventory to inventory food"

    fill_in "Inventory id", with: @add_inventory_to_inventory_food.inventory_id_id
    click_on "Create Add inventory to inventory food"

    assert_text "Add inventory to inventory food was successfully created"
    click_on "Back"
  end

  test "should update Add inventory to inventory food" do
    visit add_inventory_to_inventory_food_url(@add_inventory_to_inventory_food)
    click_on "Edit this add inventory to inventory food", match: :first

    fill_in "Inventory id", with: @add_inventory_to_inventory_food.inventory_id_id
    click_on "Update Add inventory to inventory food"

    assert_text "Add inventory to inventory food was successfully updated"
    click_on "Back"
  end

  test "should destroy Add inventory to inventory food" do
    visit add_inventory_to_inventory_food_url(@add_inventory_to_inventory_food)
    click_on "Destroy this add inventory to inventory food", match: :first

    assert_text "Add inventory to inventory food was successfully destroyed"
  end
end
