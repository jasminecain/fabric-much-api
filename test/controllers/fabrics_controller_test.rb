require 'test_helper'

class FabricsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fabric = fabrics(:one)
  end

  test "should get index" do
    get fabrics_url, as: :json
    assert_response :success
  end

  test "should create fabric" do
    assert_difference('Fabric.count') do
      post fabrics_url, params: { fabric: { barcode: @fabric.barcode, bolt_id: @fabric.bolt_id, fabric_name: @fabric.fabric_name, fabric_type_id: @fabric.fabric_type_id, price: @fabric.price, quantity: @fabric.quantity, store: @fabric.store, user_id: @fabric.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show fabric" do
    get fabric_url(@fabric), as: :json
    assert_response :success
  end

  test "should update fabric" do
    patch fabric_url(@fabric), params: { fabric: { barcode: @fabric.barcode, bolt_id: @fabric.bolt_id, fabric_name: @fabric.fabric_name, fabric_type_id: @fabric.fabric_type_id, price: @fabric.price, quantity: @fabric.quantity, store: @fabric.store, user_id: @fabric.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy fabric" do
    assert_difference('Fabric.count', -1) do
      delete fabric_url(@fabric), as: :json
    end

    assert_response 204
  end
end
