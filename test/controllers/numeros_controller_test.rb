require 'test_helper'

class NumerosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @numero = numeros(:one)
  end

  test "should get index" do
    get numeros_url
    assert_response :success
  end

  test "should get new" do
    get new_numero_url
    assert_response :success
  end

  test "should create numero" do
    assert_difference('Numero.count') do
      post numeros_url, params: { numero: { fondo: @numero.fondo, inversion: @numero.inversion, porcentaje: @numero.porcentaje } }
    end

    assert_redirected_to numero_url(Numero.last)
  end

  test "should show numero" do
    get numero_url(@numero)
    assert_response :success
  end

  test "should get edit" do
    get edit_numero_url(@numero)
    assert_response :success
  end

  test "should update numero" do
    patch numero_url(@numero), params: { numero: { fondo: @numero.fondo, inversion: @numero.inversion, porcentaje: @numero.porcentaje } }
    assert_redirected_to numero_url(@numero)
  end

  test "should destroy numero" do
    assert_difference('Numero.count', -1) do
      delete numero_url(@numero)
    end

    assert_redirected_to numeros_url
  end
end
