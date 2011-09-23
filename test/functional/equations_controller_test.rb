require 'test_helper'

class EquationsControllerTest < ActionController::TestCase
  setup do
    @equation = equations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equation" do
    assert_difference('Equation.count') do
      post :create, equation: @equation.attributes
    end

    assert_redirected_to equation_path(assigns(:equation))
  end

  test "should show equation" do
    get :show, id: @equation.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equation.to_param
    assert_response :success
  end

  test "should update equation" do
    put :update, id: @equation.to_param, equation: @equation.attributes
    assert_redirected_to equation_path(assigns(:equation))
  end

  test "should destroy equation" do
    assert_difference('Equation.count', -1) do
      delete :destroy, id: @equation.to_param
    end

    assert_redirected_to equations_path
  end
end
