require 'test_helper'

class LotrControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lotr_index_url
    assert_response :success
  end

end
