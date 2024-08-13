require 'test_helper'

class CaffesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get caffes_index_url
    assert_response :success
  end

  test "should get new" do
    get caffes_new_url
    assert_response :success
  end

  test "should get show" do
    get caffes_show_url
    assert_response :success
  end

  test "should get edit" do
    get caffes_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get caffes_destroy_url
    assert_response :success
  end

end
