require 'test_helper'

class SheltersControllerTest < ActionDispatch::IntegrationTest
  test "should get group" do
    get shelters_group_url
    assert_response :success
  end

  test "should get index" do
    get shelters_index_url
    assert_response :success
  end

  test "should get show" do
    get shelters_show_url
    assert_response :success
  end

  test "should get new" do
    get shelters_new_url
    assert_response :success
  end

  test "should get edit" do
    get shelters_edit_url
    assert_response :success
  end

end
