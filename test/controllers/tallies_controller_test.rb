require 'test_helper'

class TalliesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tallies_new_url
    assert_response :success
  end

  test "should get create" do
    get tallies_create_url
    assert_response :success
  end

  test "should get index" do
    get tallies_index_url
    assert_response :success
  end

  test "should get show" do
    get tallies_show_url
    assert_response :success
  end

  test "should get edit" do
    get tallies_edit_url
    assert_response :success
  end

  test "should get update" do
    get tallies_update_url
    assert_response :success
  end

  test "should get destroy" do
    get tallies_destroy_url
    assert_response :success
  end

end
