require 'test_helper'

class ParksControllerTest < ActionController::TestCase
  setup do
    @park = parks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create park" do
    assert_difference('Park.count') do
      post :create, park: { area: @park.area, by_car: @park.by_car, by_ferry: @park.by_ferry, by_plane: @park.by_plane, by_snowmobile: @park.by_snowmobile, name: @park.name, number_of_species: @park.number_of_species, province: @park.province, season_end: @park.season_end, season_start: @park.season_start, summer_mean_temp: @park.summer_mean_temp, visitors: @park.visitors, winter_mean_temp: @park.winter_mean_temp }
    end

    assert_redirected_to park_path(assigns(:park))
  end

  test "should show park" do
    get :show, id: @park
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @park
    assert_response :success
  end

  test "should update park" do
    patch :update, id: @park, park: { area: @park.area, by_car: @park.by_car, by_ferry: @park.by_ferry, by_plane: @park.by_plane, by_snowmobile: @park.by_snowmobile, name: @park.name, number_of_species: @park.number_of_species, province: @park.province, season_end: @park.season_end, season_start: @park.season_start, summer_mean_temp: @park.summer_mean_temp, visitors: @park.visitors, winter_mean_temp: @park.winter_mean_temp }
    assert_redirected_to park_path(assigns(:park))
  end

  test "should destroy park" do
    assert_difference('Park.count', -1) do
      delete :destroy, id: @park
    end

    assert_redirected_to parks_path
  end
end
