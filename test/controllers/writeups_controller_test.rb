require 'test_helper'

class WriteupsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get writeups_index_url
    assert_response :success
  end

end
