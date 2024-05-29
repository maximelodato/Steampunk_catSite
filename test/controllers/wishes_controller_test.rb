require "test_helper"

class WishesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get wishes_show_url
    assert_response :success
  end
end
