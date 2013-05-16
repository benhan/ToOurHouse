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
<<<<<<< HEAD
      post :create, osignup: { end_date: @osignup.end_date, organization_type: @osignup.organization_type, start_date: @osignup.start_date }
=======
      post :create, osignup: { end_date: @osignup.end_date, start_date: @osignup.start_date }
>>>>>>> 19f3ae6cc4629fcb48706e99ff19aeadf87f57b8
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
<<<<<<< HEAD
    put :update, id: @osignup, osignup: { end_date: @osignup.end_date, organization_type: @osignup.organization_type, start_date: @osignup.start_date }
=======
    put :update, id: @osignup, osignup: { end_date: @osignup.end_date, start_date: @osignup.start_date }
>>>>>>> 19f3ae6cc4629fcb48706e99ff19aeadf87f57b8
    assert_redirected_to osignup_path(assigns(:osignup))
  end

  test "should destroy osignup" do
    assert_difference('Osignup.count', -1) do
      delete :destroy, id: @osignup
    end

    assert_redirected_to osignups_path
  end
end
