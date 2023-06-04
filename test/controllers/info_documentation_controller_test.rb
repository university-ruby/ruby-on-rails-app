require "test_helper"

class InfoDocumentationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get info_documentation_index_url
    assert_response :success
  end
end
