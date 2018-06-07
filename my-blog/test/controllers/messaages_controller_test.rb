require 'test_helper'

class MessaagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @messaage = messaages(:one)
  end

  test "should get index" do
    get messaages_url
    assert_response :success
  end

  test "should get new" do
    get new_messaage_url
    assert_response :success
  end

  test "should create messaage" do
    assert_difference('Messaage.count') do
      post messaages_url, params: { messaage: { message: @messaage.message, title: @messaage.title } }
    end

    assert_redirected_to messaage_url(Messaage.last)
  end

  test "should show messaage" do
    get messaage_url(@messaage)
    assert_response :success
  end

  test "should get edit" do
    get edit_messaage_url(@messaage)
    assert_response :success
  end

  test "should update messaage" do
    patch messaage_url(@messaage), params: { messaage: { message: @messaage.message, title: @messaage.title } }
    assert_redirected_to messaage_url(@messaage)
  end

  test "should destroy messaage" do
    assert_difference('Messaage.count', -1) do
      delete messaage_url(@messaage)
    end

    assert_redirected_to messaages_url
  end
end
