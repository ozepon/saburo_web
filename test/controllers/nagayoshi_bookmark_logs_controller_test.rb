require 'test_helper'

class NagayoshiBookmarkLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nagayoshi_bookmark_log = nagayoshi_bookmark_logs(:one)
  end

  test "should get index" do
    get nagayoshi_bookmark_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_nagayoshi_bookmark_log_url
    assert_response :success
  end

  test "should create nagayoshi_bookmark_log" do
    assert_difference('NagayoshiBookmarkLog.count') do
      post nagayoshi_bookmark_logs_url, params: { nagayoshi_bookmark_log: { string: @nagayoshi_bookmark_log.string } }
    end

    assert_redirected_to nagayoshi_bookmark_log_url(NagayoshiBookmarkLog.last)
  end

  test "should show nagayoshi_bookmark_log" do
    get nagayoshi_bookmark_log_url(@nagayoshi_bookmark_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_nagayoshi_bookmark_log_url(@nagayoshi_bookmark_log)
    assert_response :success
  end

  test "should update nagayoshi_bookmark_log" do
    patch nagayoshi_bookmark_log_url(@nagayoshi_bookmark_log), params: { nagayoshi_bookmark_log: { string: @nagayoshi_bookmark_log.string } }
    assert_redirected_to nagayoshi_bookmark_log_url(@nagayoshi_bookmark_log)
  end

  test "should destroy nagayoshi_bookmark_log" do
    assert_difference('NagayoshiBookmarkLog.count', -1) do
      delete nagayoshi_bookmark_log_url(@nagayoshi_bookmark_log)
    end

    assert_redirected_to nagayoshi_bookmark_logs_url
  end
end
