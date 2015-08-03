require 'test_helper'

class StockingsControllerTest < ActionController::TestCase
  setup do
    @stocking = stockings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stockings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stocking" do
    assert_difference('Stocking.count') do
      post :create, stocking: { data: @stocking.data, function_id: @stocking.function_id, local_id: @stocking.local_id, obs: @stocking.obs, workload: @stocking.workload }
    end

    assert_redirected_to stocking_path(assigns(:stocking))
  end

  test "should show stocking" do
    get :show, id: @stocking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stocking
    assert_response :success
  end

  test "should update stocking" do
    patch :update, id: @stocking, stocking: { data: @stocking.data, function_id: @stocking.function_id, local_id: @stocking.local_id, obs: @stocking.obs, workload: @stocking.workload }
    assert_redirected_to stocking_path(assigns(:stocking))
  end

  test "should destroy stocking" do
    assert_difference('Stocking.count', -1) do
      delete :destroy, id: @stocking
    end

    assert_redirected_to stockings_path
  end
end
