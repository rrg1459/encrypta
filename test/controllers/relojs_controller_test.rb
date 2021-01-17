require 'test_helper'

class RelojsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reloj = relojs(:one)
  end

  test "should get index" do
    get relojs_url
    assert_response :success
  end

  test "should get new" do
    get new_reloj_url
    assert_response :success
  end

  test "should create reloj" do
    assert_difference('Reloj.count') do
      post relojs_url, params: { reloj: { minuto: @reloj.minuto } }
    end

    assert_redirected_to reloj_url(Reloj.last)
  end

  test "should show reloj" do
    get reloj_url(@reloj)
    assert_response :success
  end

  test "should get edit" do
    get edit_reloj_url(@reloj)
    assert_response :success
  end

  test "should update reloj" do
    patch reloj_url(@reloj), params: { reloj: { minuto: @reloj.minuto } }
    assert_redirected_to reloj_url(@reloj)
  end

  test "should destroy reloj" do
    assert_difference('Reloj.count', -1) do
      delete reloj_url(@reloj)
    end

    assert_redirected_to relojs_url
  end
end
