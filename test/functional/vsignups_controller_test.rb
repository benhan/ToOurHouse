require 'test_helper'

class VsignupsControllerTest < ActionController::TestCase
  setup do
    @vsignup = vsignups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vsignups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vsignup" do
    assert_difference('Vsignup.count') do
      post :create, vsignup: { date: @vsignup.date }
    end

    assert_redirected_to vsignup_path(assigns(:vsignup))
  end

  test "should show vsignup" do
    get :show, id: @vsignup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vsignup
    assert_response :success
  end

  test "should update vsignup" do
    put :update, id: @vsignup, vsignup: { date: @vsignup.date }
    assert_redirected_to vsignup_path(assigns(:vsignup))
  end

  test "should destroy vsignup" do
    assert_difference('Vsignup.count', -1) do
      delete :destroy, id: @vsignup
    end

    assert_redirected_to vsignups_path
  end
end
