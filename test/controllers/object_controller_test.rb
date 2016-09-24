require 'test_helper'

class ObjectControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get object_index_url
    assert_response :success
  end

end
