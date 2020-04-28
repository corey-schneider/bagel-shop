require 'test_helper'

class AboutControllerTest < ActionDispatch::IntegrationTest
  test "should get AboutUs" do
    get about_AboutUs_url
    assert_response :success
  end

end
