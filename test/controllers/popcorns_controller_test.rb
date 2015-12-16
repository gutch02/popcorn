require 'test_helper'

class PopcornsControllerTest < ActionController::TestCase
  setup do
    @popcorn = popcorns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:popcorns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create popcorn" do
    assert_difference('Popcorn.count') do
      post :create, popcorn: { description: @popcorn.description, flavor: @popcorn.flavor, picture: @popcorn.picture }
    end

    assert_redirected_to popcorn_path(assigns(:popcorn))
  end

  test "should show popcorn" do
    get :show, id: @popcorn
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @popcorn
    assert_response :success
  end

  test "should update popcorn" do
    patch :update, id: @popcorn, popcorn: { description: @popcorn.description, flavor: @popcorn.flavor, picture: @popcorn.picture }
    assert_redirected_to popcorn_path(assigns(:popcorn))
  end

  test "should destroy popcorn" do
    assert_difference('Popcorn.count', -1) do
      delete :destroy, id: @popcorn
    end

    assert_redirected_to popcorns_path
  end
end
