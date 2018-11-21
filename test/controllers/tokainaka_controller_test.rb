require 'test_helper'

class TokainakaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tokainaka_index_url
    assert_response :success
  end

end
