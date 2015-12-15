require 'test_helper'

class PlateChecksControllerTest < ActionController::TestCase
  setup do
    @plate_check = plate_checks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plate_checks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plate_check" do
    assert_difference('PlateCheck.count') do
      post :create, plate_check: { name: @plate_check.name }
    end

    assert_redirected_to plate_check_path(assigns(:plate_check))
  end

  test "should show plate_check" do
    get :show, id: @plate_check
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plate_check
    assert_response :success
  end

  test "should update plate_check" do
    patch :update, id: @plate_check, plate_check: { name: @plate_check.name }
    assert_redirected_to plate_check_path(assigns(:plate_check))
  end

  test "should destroy plate_check" do
    assert_difference('PlateCheck.count', -1) do
      delete :destroy, id: @plate_check
    end

    assert_redirected_to plate_checks_path
  end
end
