require 'test_helper'

class AdministrativeRegionsControllerTest < ActionController::TestCase
  setup do
    @administrative_region = administrative_regions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:administrative_regions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create administrative_region" do
    assert_difference('AdministrativeRegion.count') do
      post :create, administrative_region: { initials: @administrative_region.initials, name: @administrative_region.name }
    end

    assert_redirected_to administrative_region_path(assigns(:administrative_region))
  end

  test "should show administrative_region" do
    get :show, id: @administrative_region
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @administrative_region
    assert_response :success
  end

  test "should update administrative_region" do
    patch :update, id: @administrative_region, administrative_region: { initials: @administrative_region.initials, name: @administrative_region.name }
    assert_redirected_to administrative_region_path(assigns(:administrative_region))
  end

  test "should destroy administrative_region" do
    assert_difference('AdministrativeRegion.count', -1) do
      delete :destroy, id: @administrative_region
    end

    assert_redirected_to administrative_regions_path
  end
end
