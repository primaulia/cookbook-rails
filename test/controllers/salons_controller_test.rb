require 'test_helper'

class SalonsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get salons_show_url
    assert_response :success
  end

end
