require 'test_helper'

class TypeLocalsControllerTest < ActionController::TestCase
  setup do
    @type_local = type_locals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_locals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_local" do
    assert_difference('TypeLocal.count') do
      post :create, type_local: { name: @type_local.name }
    end

    assert_redirected_to type_local_path(assigns(:type_local))
  end

  test "should show type_local" do
    get :show, id: @type_local
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_local
    assert_response :success
  end

  test "should update type_local" do
    patch :update, id: @type_local, type_local: { name: @type_local.name }
    assert_redirected_to type_local_path(assigns(:type_local))
  end

  test "should destroy type_local" do
    assert_difference('TypeLocal.count', -1) do
      delete :destroy, id: @type_local
    end

    assert_redirected_to type_locals_path
  end
end
