require 'test_helper'

class RailcarTypesControllerTest < ActionController::TestCase
  setup do
    @railcar_type = railcar_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:railcar_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create railcar_type" do
    assert_difference('RailcarType.count') do
      post :create, railcar_type: { Active: @railcar_type.Active, Description: @railcar_type.Description, Name: @railcar_type.Name }
    end

    assert_redirected_to railcar_type_path(assigns(:railcar_type))
  end

  test "should show railcar_type" do
    get :show, id: @railcar_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @railcar_type
    assert_response :success
  end

  test "should update railcar_type" do
    put :update, id: @railcar_type, railcar_type: { Active: @railcar_type.Active, Description: @railcar_type.Description, Name: @railcar_type.Name }
    assert_redirected_to railcar_type_path(assigns(:railcar_type))
  end

  test "should destroy railcar_type" do
    assert_difference('RailcarType.count', -1) do
      delete :destroy, id: @railcar_type
    end

    assert_redirected_to railcar_types_path
  end
end
