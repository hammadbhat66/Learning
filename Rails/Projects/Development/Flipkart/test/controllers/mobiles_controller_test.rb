require 'test_helper'

class MobilesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get mobiles_new_url
    assert_response :success
  end

end
