require 'test_helper'

class TypePatiosControllerTest < ActionController::TestCase
  setup do
    @type_patio = type_patios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_patios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_patio" do
    assert_difference('TypePatio.count') do
      post :create, type_patio: { initial: @type_patio.initial, name: @type_patio.name }
    end

    assert_redirected_to type_patio_path(assigns(:type_patio))
  end

  test "should show type_patio" do
    get :show, id: @type_patio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_patio
    assert_response :success
  end

  test "should update type_patio" do
    patch :update, id: @type_patio, type_patio: { initial: @type_patio.initial, name: @type_patio.name }
    assert_redirected_to type_patio_path(assigns(:type_patio))
  end

  test "should destroy type_patio" do
    assert_difference('TypePatio.count', -1) do
      delete :destroy, id: @type_patio
    end

    assert_redirected_to type_patios_path
  end
end
