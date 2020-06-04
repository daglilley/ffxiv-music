require 'test_helper'

class BgmsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bgms_index_url
    assert_response :success
  end

end
