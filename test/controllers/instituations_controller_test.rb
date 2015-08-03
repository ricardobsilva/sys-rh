require 'test_helper'

class InstituationsControllerTest < ActionController::TestCase
  setup do
    @instituation = instituations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instituations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instituation" do
    assert_difference('Instituation.count') do
      post :create, instituation: { name: @instituation.name }
    end

    assert_redirected_to instituation_path(assigns(:instituation))
  end

  test "should show instituation" do
    get :show, id: @instituation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instituation
    assert_response :success
  end

  test "should update instituation" do
    patch :update, id: @instituation, instituation: { name: @instituation.name }
    assert_redirected_to instituation_path(assigns(:instituation))
  end

  test "should destroy instituation" do
    assert_difference('Instituation.count', -1) do
      delete :destroy, id: @instituation
    end

    assert_redirected_to instituations_path
  end
end
