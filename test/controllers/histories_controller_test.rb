require 'test_helper'

class HistoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get histories_show_url
    assert_response :success
  end

end
