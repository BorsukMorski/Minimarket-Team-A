require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get dashboard_new_url
    assert_response :success
  end

end
