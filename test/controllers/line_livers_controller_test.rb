require 'test_helper'

class LineLiversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @line_liver = line_livers(:one)
  end

  test "should get index" do
    get line_livers_url
    assert_response :success
  end

  test "should get new" do
    get new_line_liver_url
    assert_response :success
  end

  test "should create line_liver" do
    assert_difference('LineLiver.count') do
      post line_livers_url, params: { line_liver: { active: @line_liver.active, line_liver_id: @line_liver.line_liver_id, name: @line_liver.name } }
    end

    assert_redirected_to line_liver_url(LineLiver.last)
  end

  test "should show line_liver" do
    get line_liver_url(@line_liver)
    assert_response :success
  end

  test "should get edit" do
    get edit_line_liver_url(@line_liver)
    assert_response :success
  end

  test "should update line_liver" do
    patch line_liver_url(@line_liver), params: { line_liver: { active: @line_liver.active, line_liver_id: @line_liver.line_liver_id, name: @line_liver.name } }
    assert_redirected_to line_liver_url(@line_liver)
  end

  test "should destroy line_liver" do
    assert_difference('LineLiver.count', -1) do
      delete line_liver_url(@line_liver)
    end

    assert_redirected_to line_livers_url
  end
end
