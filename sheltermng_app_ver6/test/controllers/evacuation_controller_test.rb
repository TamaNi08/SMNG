require 'test_helper'

class EvacuationControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get evacuation_top_url
    assert_response :success
  end

  test "should get map" do
    get evacuation_map_url
    assert_response :success
  end

  test "should get table" do
    get evacuation_table_url
    assert_response :success
  end

end
