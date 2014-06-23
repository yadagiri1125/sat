require 'test_helper'

class Emp1sControllerTest < ActionController::TestCase
  setup do
    @emp1 = emp1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emp1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emp1" do
    assert_difference('Emp1.count') do
      post :create, emp1: { name1: @emp1.name1 }
    end

    assert_redirected_to emp1_path(assigns(:emp1))
  end

  test "should show emp1" do
    get :show, id: @emp1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emp1
    assert_response :success
  end

  test "should update emp1" do
    patch :update, id: @emp1, emp1: { name1: @emp1.name1 }
    assert_redirected_to emp1_path(assigns(:emp1))
  end

  test "should destroy emp1" do
    assert_difference('Emp1.count', -1) do
      delete :destroy, id: @emp1
    end

    assert_redirected_to emp1s_path
  end
end
