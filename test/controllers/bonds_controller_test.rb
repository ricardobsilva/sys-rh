require 'test_helper'

class BondsControllerTest < ActionController::TestCase
  setup do
    @bond = bonds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bonds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bond" do
    assert_difference('Bond.count') do
      post :create, bond: { description: @bond.description, dt_admission: @bond.dt_admission, instituation_id: @bond.instituation_id, obs: @bond.obs, person_id: @bond.person_id, role_id: @bond.role_id, situation_bond_id: @bond.situation_bond_id, type_bond_id: @bond.type_bond_id, workload: @bond.workload }
    end

    assert_redirected_to bond_path(assigns(:bond))
  end

  test "should show bond" do
    get :show, id: @bond
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bond
    assert_response :success
  end

  test "should update bond" do
    patch :update, id: @bond, bond: { description: @bond.description, dt_admission: @bond.dt_admission, instituation_id: @bond.instituation_id, obs: @bond.obs, person_id: @bond.person_id, role_id: @bond.role_id, situation_bond_id: @bond.situation_bond_id, type_bond_id: @bond.type_bond_id, workload: @bond.workload }
    assert_redirected_to bond_path(assigns(:bond))
  end

  test "should destroy bond" do
    assert_difference('Bond.count', -1) do
      delete :destroy, id: @bond
    end

    assert_redirected_to bonds_path
  end
end
