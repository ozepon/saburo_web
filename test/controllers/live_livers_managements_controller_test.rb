require 'test_helper'

class LiveLiversManagementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @live_livers_management = live_livers_managements(:one)
  end

  test "should get index" do
    get live_livers_managements_url
    assert_response :success
  end

  test "should get new" do
    get new_live_livers_management_url
    assert_response :success
  end

  test "should create live_livers_management" do
    assert_difference('LiveLiversManagement.count') do
      post live_livers_managements_url, params: { live_livers_management: {  } }
    end

    assert_redirected_to live_livers_management_url(LiveLiversManagement.last)
  end

  test "should show live_livers_management" do
    get live_livers_management_url(@live_livers_management)
    assert_response :success
  end

  test "should get edit" do
    get edit_live_livers_management_url(@live_livers_management)
    assert_response :success
  end

  test "should update live_livers_management" do
    patch live_livers_management_url(@live_livers_management), params: { live_livers_management: {  } }
    assert_redirected_to live_livers_management_url(@live_livers_management)
  end

  test "should destroy live_livers_management" do
    assert_difference('LiveLiversManagement.count', -1) do
      delete live_livers_management_url(@live_livers_management)
    end

    assert_redirected_to live_livers_managements_url
  end
end
