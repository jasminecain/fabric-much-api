require 'test_helper'

class SwatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @swatch = swatches(:one)
  end

  test "should get index" do
    get swatches_url, as: :json
    assert_response :success
  end

  test "should create swatch" do
    assert_difference('Swatch.count') do
      post swatches_url, params: { swatch: { bolt_id: @swatch.bolt_id, fabric_id: @swatch.fabric_id, user_id: @swatch.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show swatch" do
    get swatch_url(@swatch), as: :json
    assert_response :success
  end

  test "should update swatch" do
    patch swatch_url(@swatch), params: { swatch: { bolt_id: @swatch.bolt_id, fabric_id: @swatch.fabric_id, user_id: @swatch.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy swatch" do
    assert_difference('Swatch.count', -1) do
      delete swatch_url(@swatch), as: :json
    end

    assert_response 204
  end
end
