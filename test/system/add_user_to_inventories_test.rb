require "application_system_test_case"

class AddUserToInventoriesTest < ApplicationSystemTestCase
  setup do
    @add_user_to_inventory = add_user_to_inventories(:one)
  end

  test "visiting the index" do
    visit add_user_to_inventories_url
    assert_selector "h1", text: "Add user to inventories"
  end

  test "should create add user to inventory" do
    visit add_user_to_inventories_url
    click_on "New add user to inventory"

    fill_in "User id", with: @add_user_to_inventory.user_id_id
    click_on "Create Add user to inventory"

    assert_text "Add user to inventory was successfully created"
    click_on "Back"
  end

  test "should update Add user to inventory" do
    visit add_user_to_inventory_url(@add_user_to_inventory)
    click_on "Edit this add user to inventory", match: :first

    fill_in "User id", with: @add_user_to_inventory.user_id_id
    click_on "Update Add user to inventory"

    assert_text "Add user to inventory was successfully updated"
    click_on "Back"
  end

  test "should destroy Add user to inventory" do
    visit add_user_to_inventory_url(@add_user_to_inventory)
    click_on "Destroy this add user to inventory", match: :first

    assert_text "Add user to inventory was successfully destroyed"
  end
end
