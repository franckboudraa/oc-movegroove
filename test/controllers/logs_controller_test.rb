require 'test_helper'

class LogsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @user = users(:john)
    sign_in @user
    @log = logs(:one)
  end

  test "guests should not have access to logs pages" do
    sign_out @user
    get logs_url
    assert_redirected_to new_user_session_url
  end

  test "should get index" do
    get logs_url
    assert_response :success
  end

  test "should get new" do
    get new_log_url, params: { id: 1 }
    assert_response :success
  end

  test "should create log" do
    assert_difference('Log.count') do
      post logs_url, params: { log: { :duration => 60,
                                      :activity_id => 1,
                                      :activity_intensity_id => 2,
                                      :user_id => 2,
                                      :comment => 'just a simple string',
                                      :feeling => 'i3'
      } }
    end

    assert_redirected_to log_url(Log.last)
  end

  test "should show log" do
    get log_url(@log)
    assert_response :success
  end

  test "should get edit" do
    get edit_log_url(@log)
    assert_response :success
  end

  test "should update log" do
    patch log_url(@log), params: { log: { :duration => 60 } }
    assert_redirected_to log_url(@log)
  end

  test "should destroy log" do
    assert_difference('Log.count', -1) do
      delete log_url(@log)
    end

    assert_redirected_to logs_url
  end
end
