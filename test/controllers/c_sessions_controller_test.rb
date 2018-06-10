require 'test_helper'

class C_sessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get c_sessions_new_url
    assert_response :success
  end

  test "should get create" do
    get c_sessions_create_url
    assert_response :success
  end

  test "should get destroy" do
    get c_sessions_destroy_url
    assert_response :success
  end

end
