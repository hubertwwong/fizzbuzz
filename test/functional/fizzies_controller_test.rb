require 'test_helper'

class FizziesControllerTest < ActionController::TestCase
  setup do
    @fizzy = fizzies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fizzies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fizzy" do
    assert_difference('Fizzy.count') do
      post :create, :fizzy => @fizzy.attributes
    end

    assert_redirected_to fizzy_path(assigns(:fizzy))
  end

  test "should show fizzy" do
    get :show, :id => @fizzy.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @fizzy.to_param
    assert_response :success
  end

  test "should update fizzy" do
    put :update, :id => @fizzy.to_param, :fizzy => @fizzy.attributes
    assert_redirected_to fizzy_path(assigns(:fizzy))
  end

  test "should destroy fizzy" do
    assert_difference('Fizzy.count', -1) do
      delete :destroy, :id => @fizzy.to_param
    end

    assert_redirected_to fizzies_path
  end
end
