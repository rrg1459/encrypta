require 'test_helper'

class EncryptasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @encrypta = encryptas(:one)
  end

  test "should get index" do
    get encryptas_url
    assert_response :success
  end

  test "should get new" do
    get new_encrypta_url
    assert_response :success
  end

  test "should create encrypta" do
    assert_difference('Encrypta.count') do
      post encryptas_url, params: { encrypta: { clave: @encrypta.clave, inicial: @encrypta.inicial } }
    end

    assert_redirected_to encrypta_url(Encrypta.last)
  end

  test "should show encrypta" do
    get encrypta_url(@encrypta)
    assert_response :success
  end

  test "should get edit" do
    get edit_encrypta_url(@encrypta)
    assert_response :success
  end

  test "should update encrypta" do
    patch encrypta_url(@encrypta), params: { encrypta: { clave: @encrypta.clave, inicial: @encrypta.inicial } }
    assert_redirected_to encrypta_url(@encrypta)
  end

  test "should destroy encrypta" do
    assert_difference('Encrypta.count', -1) do
      delete encrypta_url(@encrypta)
    end

    assert_redirected_to encryptas_url
  end
end
