require "test_helper"

class AddInventoryToInventoryFoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_inventory_to_inventory_food = add_inventory_to_inventory_foods(:one)
  end

  test "should get index" do
    get add_inventory_to_inventory_foods_url
    assert_response :success
  end

  test "should get new" do
    get new_add_inventory_to_inventory_food_url
    assert_response :success
  end

  test "should create add_inventory_to_inventory_food" do
    assert_difference("AddInventoryToInventoryFood.count") do
      post add_inventory_to_inventory_foods_url, params: { add_inventory_to_inventory_food: { inventory_id_id: @add_inventory_to_inventory_food.inventory_id_id } }
    end

    assert_redirected_to add_inventory_to_inventory_food_url(AddInventoryToInventoryFood.last)
  end

  test "should show add_inventory_to_inventory_food" do
    get add_inventory_to_inventory_food_url(@add_inventory_to_inventory_food)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_inventory_to_inventory_food_url(@add_inventory_to_inventory_food)
    assert_response :success
  end

  test "should update add_inventory_to_inventory_food" do
    patch add_inventory_to_inventory_food_url(@add_inventory_to_inventory_food), params: { add_inventory_to_inventory_food: { inventory_id_id: @add_inventory_to_inventory_food.inventory_id_id } }
    assert_redirected_to add_inventory_to_inventory_food_url(@add_inventory_to_inventory_food)
  end

  test "should destroy add_inventory_to_inventory_food" do
    assert_difference("AddInventoryToInventoryFood.count", -1) do
      delete add_inventory_to_inventory_food_url(@add_inventory_to_inventory_food)
    end

    assert_redirected_to add_inventory_to_inventory_foods_url
  end
end
