require 'test_helper'

class PruebasControllerTest < ActionDispatch::IntegrationTest
  test "should get metodo1" do
    get pruebas_metodo1_url
    assert_response :success
  end

  test "should get metodo2" do
    get pruebas_metodo2_url
    assert_response :success
  end

end
