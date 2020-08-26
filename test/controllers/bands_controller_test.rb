require 'test_helper'

class BandsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bands_index_url
    assert_response :success
  end

  test "should get show" do
    get bands_show_url
    assert_response :success
  end

  test "should get edit" do
    get bands_edit_url
    assert_response :success
  end

  test "should get update" do
    get bands_update_url
    assert_response :success
  end

  test "should get add_musician" do
    get bands_add_musician_url
    assert_response :success
  end

end
