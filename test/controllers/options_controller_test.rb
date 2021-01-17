require 'test_helper'

class opcionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @opcion = opciones(:one)
  end

  test "should get index" do
    get opciones_url
    assert_response :success
  end

  test "should get new" do
    get new_option_url
    assert_response :success
  end

  test "should create option" do
    assert_difference('Option.count') do
      post opciones_url, params: { option: { juliano: @opcion.juliano, porcentaje: @opcion.porcentaje, resultado: @opcion.resultado } }
    end

    assert_redirected_to option_url(Option.last)
  end

  test "should show option" do
    get option_url(@opcion)
    assert_response :success
  end

  test "should get edit" do
    get edit_option_url(@opcion)
    assert_response :success
  end

  test "should update option" do
    patch option_url(@opcion), params: { option: { juliano: @opcion.juliano, porcentaje: @opcion.porcentaje, resultado: @opcion.resultado } }
    assert_redirected_to option_url(@opcion)
  end

  test "should destroy option" do
    assert_difference('Option.count', -1) do
      delete option_url(@opcion)
    end

    assert_redirected_to opciones_url
  end
end
