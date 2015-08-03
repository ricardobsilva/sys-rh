require 'test_helper'

class TypeBondsControllerTest < ActionController::TestCase
  setup do
    @type_bond = type_bonds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_bonds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_bond" do
    assert_difference('TypeBond.count') do
      post :create, type_bond: { abbreviation: @type_bond.abbreviation, name: @type_bond.name }
    end

    assert_redirected_to type_bond_path(assigns(:type_bond))
  end

  test "should show type_bond" do
    get :show, id: @type_bond
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_bond
    assert_response :success
  end

  test "should update type_bond" do
    patch :update, id: @type_bond, type_bond: { abbreviation: @type_bond.abbreviation, name: @type_bond.name }
    assert_redirected_to type_bond_path(assigns(:type_bond))
  end

  test "should destroy type_bond" do
    assert_difference('TypeBond.count', -1) do
      delete :destroy, id: @type_bond
    end

    assert_redirected_to type_bonds_path
  end
end
