require 'test_helper'

class OsignupsControllerTest < ActionController::TestCase
  setup do
    @osignup = osignups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:osignups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create osignup" do
    assert_difference('Osignup.count') do
      post :create, osignup: { end_date: @osignup.end_date, start_date: @osignup.start_date }
    end

    assert_redirected_to osignup_path(assigns(:osignup))
  end

  test "should show osignup" do
    get :show, id: @osignup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @osignup
    assert_response :success
  end

  test "should update osignup" do
    put :update, id: @osignup, osignup: { end_date: @osignup.end_date, start_date: @osignup.start_date }
    assert_redirected_to osignup_path(assigns(:osignup))
  end

  test "should destroy osignup" do
    assert_difference('Osignup.count', -1) do
      delete :destroy, id: @osignup
    end

    assert_redirected_to osignups_path
  end
end
