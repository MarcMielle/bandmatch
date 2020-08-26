require 'test_helper'

class MusiciansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get musicians_index_url
    assert_response :success
  end

  test "should get edit" do
    get musicians_edit_url
    assert_response :success
  end

  test "should get show" do
    get musicians_show_url
    assert_response :success
  end

  test "should get update" do
    get musicians_update_url
    assert_response :success
  end

end
