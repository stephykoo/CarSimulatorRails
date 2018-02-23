require 'test_helper'

class SimulatorsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get simulators_create_url
    assert_response :success
  end

end
