require 'test_helper'

class LineLivePagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @line_live_page = line_live_pages(:one)
  end

  test "should get index" do
    get line_live_pages_url
    assert_response :success
  end

  test "should get new" do
    get new_line_live_page_url
    assert_response :success
  end

  test "should create line_live_page" do
    assert_difference('LineLivePage.count') do
      post line_live_pages_url, params: { line_live_page: { line_liver_id: @line_live_page.line_liver_id, value: @line_live_page.value } }
    end

    assert_redirected_to line_live_page_url(LineLivePage.last)
  end

  test "should show line_live_page" do
    get line_live_page_url(@line_live_page)
    assert_response :success
  end

  test "should get edit" do
    get edit_line_live_page_url(@line_live_page)
    assert_response :success
  end

  test "should update line_live_page" do
    patch line_live_page_url(@line_live_page), params: { line_live_page: { line_liver_id: @line_live_page.line_liver_id, value: @line_live_page.value } }
    assert_redirected_to line_live_page_url(@line_live_page)
  end

  test "should destroy line_live_page" do
    assert_difference('LineLivePage.count', -1) do
      delete line_live_page_url(@line_live_page)
    end

    assert_redirected_to line_live_pages_url
  end
end
