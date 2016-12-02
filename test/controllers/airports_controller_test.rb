require 'test_helper'

class AirportsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get airports_index_url
    assert_response :success
  end

  test "should get show" do
    get airports_show_url
    assert_response :success
  end

  test "should get new" do
    get airports_new_url
    assert_response :success
  end

  test "should get edit" do
    get airports_edit_url
    assert_response :success
  end

  test "should get create" do
    get airports_create_url
    assert_response :success
  end

  test "should get update" do
    get airports_update_url
    assert_response :success
  end

  test "should get destroy" do
    get airports_destroy_url
    assert_response :success
  end

end
