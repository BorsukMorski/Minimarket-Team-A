require 'test_helper'

class M_sessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get m_sessions_new_url
    assert_response :success
  end

  test "should get create" do
    get m_sessions_create_url
    assert_response :success
  end

  test "should get destroy" do
    get m_sessions_destroy_url
    assert_response :success
  end

end
