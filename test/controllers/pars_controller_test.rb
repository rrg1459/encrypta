require 'test_helper'

class ParsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @par = pars(:one)
  end

  test "should get index" do
    get pars_url
    assert_response :success
  end

  test "should get new" do
    get new_par_url
    assert_response :success
  end

  test "should create par" do
    assert_difference('Par.count') do
      post pars_url, params: { par: { par: @par.par } }
    end

    assert_redirected_to par_url(Par.last)
  end

  test "should show par" do
    get par_url(@par)
    assert_response :success
  end

  test "should get edit" do
    get edit_par_url(@par)
    assert_response :success
  end

  test "should update par" do
    patch par_url(@par), params: { par: { par: @par.par } }
    assert_redirected_to par_url(@par)
  end

  test "should destroy par" do
    assert_difference('Par.count', -1) do
      delete par_url(@par)
    end

    assert_redirected_to pars_url
  end
end
