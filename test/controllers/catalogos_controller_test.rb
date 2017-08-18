require 'test_helper'

class CatalogosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get catalogos_index_url
    assert_response :success
  end

end
