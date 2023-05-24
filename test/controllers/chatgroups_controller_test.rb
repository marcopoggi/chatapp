require "test_helper"

class ChatgroupsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get chatgroups_index_url
    assert_response :success
  end
end
