require "test_helper"

class SubscriptionsControllerTest < ActionDispatch::IntegrationTest
  test "should get verify_apple_receipt" do
    get subscriptions_verify_apple_receipt_url
    assert_response :success
  end
end
