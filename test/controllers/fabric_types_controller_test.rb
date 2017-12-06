require 'test_helper'

class FabricTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fabric_type = fabric_types(:one)
  end

  test "should get index" do
    get fabric_types_url, as: :json
    assert_response :success
  end

  test "should create fabric_type" do
    assert_difference('FabricType.count') do
      post fabric_types_url, params: { fabric_type: { category: @fabric_type.category } }, as: :json
    end

    assert_response 201
  end

  test "should show fabric_type" do
    get fabric_type_url(@fabric_type), as: :json
    assert_response :success
  end

  test "should update fabric_type" do
    patch fabric_type_url(@fabric_type), params: { fabric_type: { category: @fabric_type.category } }, as: :json
    assert_response 200
  end

  test "should destroy fabric_type" do
    assert_difference('FabricType.count', -1) do
      delete fabric_type_url(@fabric_type), as: :json
    end

    assert_response 204
  end
end
