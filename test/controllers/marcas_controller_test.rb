require 'test_helper'

class MarcasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get marcas_index_url
    assert_response :success
  end

end
