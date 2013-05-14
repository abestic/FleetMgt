require 'test_helper'

class RailcarsControllerTest < ActionController::TestCase
  setup do
    @railcar = railcars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:railcars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create railcar" do
    assert_difference('Railcar.count') do
      post :create, railcar: { Active: @railcar.Active, Capacity: @railcar.Capacity, GWR: @railcar.GWR, Initial: @railcar.Initial, Inside_Length: @railcar.Inside_Length, Number: @railcar.Number, Railcar_Type_ID: @railcar.Railcar_Type_ID }
    end

    assert_redirected_to railcar_path(assigns(:railcar))
  end

  test "should show railcar" do
    get :show, id: @railcar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @railcar
    assert_response :success
  end

  test "should update railcar" do
    put :update, id: @railcar, railcar: { Active: @railcar.Active, Capacity: @railcar.Capacity, GWR: @railcar.GWR, Initial: @railcar.Initial, Inside_Length: @railcar.Inside_Length, Number: @railcar.Number, Railcar_Type_ID: @railcar.Railcar_Type_ID }
    assert_redirected_to railcar_path(assigns(:railcar))
  end

  test "should destroy railcar" do
    assert_difference('Railcar.count', -1) do
      delete :destroy, id: @railcar
    end

    assert_redirected_to railcars_path
  end
end
