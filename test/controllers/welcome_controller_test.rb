require "test_helper"

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get unregistered" do
    get welcome_unregistered_url
    assert_response :success
  end

  test "should get home" do
    get welcome_home_url
    assert_response :success
  end
end
