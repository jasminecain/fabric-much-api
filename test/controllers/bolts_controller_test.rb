require 'test_helper'

class BoltsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bolt = bolts(:one)
  end

  test "should get index" do
    get bolts_url, as: :json
    assert_response :success
  end

  test "should create bolt" do
    assert_difference('Bolt.count') do
      post bolts_url, params: { bolt: { barcode: @bolt.barcode, fabric_name: @bolt.fabric_name, fabric_type_id: @bolt.fabric_type_id, price: @bolt.price, quantity: @bolt.quantity, store: @bolt.store, user_id: @bolt.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show bolt" do
    get bolt_url(@bolt), as: :json
    assert_response :success
  end

  test "should update bolt" do
    patch bolt_url(@bolt), params: { bolt: { barcode: @bolt.barcode, fabric_name: @bolt.fabric_name, fabric_type_id: @bolt.fabric_type_id, price: @bolt.price, quantity: @bolt.quantity, store: @bolt.store, user_id: @bolt.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy bolt" do
    assert_difference('Bolt.count', -1) do
      delete bolt_url(@bolt), as: :json
    end

    assert_response 204
  end
end
