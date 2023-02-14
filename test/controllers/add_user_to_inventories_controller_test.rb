require "test_helper"

class AddUserToInventoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_user_to_inventory = add_user_to_inventories(:one)
  end

  test "should get index" do
    get add_user_to_inventories_url
    assert_response :success
  end

  test "should get new" do
    get new_add_user_to_inventory_url
    assert_response :success
  end

  test "should create add_user_to_inventory" do
    assert_difference("AddUserToInventory.count") do
      post add_user_to_inventories_url, params: { add_user_to_inventory: { user_id_id: @add_user_to_inventory.user_id_id } }
    end

    assert_redirected_to add_user_to_inventory_url(AddUserToInventory.last)
  end

  test "should show add_user_to_inventory" do
    get add_user_to_inventory_url(@add_user_to_inventory)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_user_to_inventory_url(@add_user_to_inventory)
    assert_response :success
  end

  test "should update add_user_to_inventory" do
    patch add_user_to_inventory_url(@add_user_to_inventory), params: { add_user_to_inventory: { user_id_id: @add_user_to_inventory.user_id_id } }
    assert_redirected_to add_user_to_inventory_url(@add_user_to_inventory)
  end

  test "should destroy add_user_to_inventory" do
    assert_difference("AddUserToInventory.count", -1) do
      delete add_user_to_inventory_url(@add_user_to_inventory)
    end

    assert_redirected_to add_user_to_inventories_url
  end
end
