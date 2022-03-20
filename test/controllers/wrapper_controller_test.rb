require "test_helper"

class WrapperControllerTest < ActionDispatch::IntegrationTest
  test "should get/post root url" do
    get root_url
    assert_response :success
    post root_url
    assert_response :success
  end

  test "should get wrap" do
    get wrapper_wrap_url
    assert_response :success
  end
end
