require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest

  test "should get new" do
    get dashboard_new_url

  test "should get show" do
    get dashboard_show_url

    assert_response :success
  end

end
