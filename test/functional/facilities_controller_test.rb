require 'test_helper'

class FacilitiesControllerTest < ActionController::TestCase
  setup do
    @facility = facilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:facilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create facility" do
    assert_difference('Facility.count') do
      post :create, facility: { Active: @facility.Active, Address_1: @facility.Address_1, Address_2: @facility.Address_2, Carrier_ID: @facility.Carrier_ID, City: @facility.City, Name: @facility.Name, Postal_Code: @facility.Postal_Code, Routing_Notes: @facility.Routing_Notes, State_ID: @facility.State_ID, Station_ID: @facility.Station_ID }
    end

    assert_redirected_to facility_path(assigns(:facility))
  end

  test "should show facility" do
    get :show, id: @facility
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @facility
    assert_response :success
  end

  test "should update facility" do
    put :update, id: @facility, facility: { Active: @facility.Active, Address_1: @facility.Address_1, Address_2: @facility.Address_2, Carrier_ID: @facility.Carrier_ID, City: @facility.City, Name: @facility.Name, Postal_Code: @facility.Postal_Code, Routing_Notes: @facility.Routing_Notes, State_ID: @facility.State_ID, Station_ID: @facility.Station_ID }
    assert_redirected_to facility_path(assigns(:facility))
  end

  test "should destroy facility" do
    assert_difference('Facility.count', -1) do
      delete :destroy, id: @facility
    end

    assert_redirected_to facilities_path
  end
end
