require 'test_helper'

class LeacturesControllerTest < ActionController::TestCase
  setup do
    @leacture = leactures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leactures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leacture" do
    assert_difference('Leacture.count') do
      post :create, leacture: { description: @leacture.description, presentation_id: @leacture.presentation_id, title: @leacture.title }
    end

    assert_redirected_to leacture_path(assigns(:leacture))
  end

  test "should show leacture" do
    get :show, id: @leacture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @leacture
    assert_response :success
  end

  test "should update leacture" do
    patch :update, id: @leacture, leacture: { description: @leacture.description, presentation_id: @leacture.presentation_id, title: @leacture.title }
    assert_redirected_to leacture_path(assigns(:leacture))
  end

  test "should destroy leacture" do
    assert_difference('Leacture.count', -1) do
      delete :destroy, id: @leacture
    end

    assert_redirected_to leactures_path
  end
end
