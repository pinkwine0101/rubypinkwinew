require 'test_helper'

class LuteinsControllerTest < ActionController::TestCase
  setup do
    @lutein = luteins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:luteins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lutein" do
    assert_difference('Lutein.count') do
      post :create, lutein: { commend: @lutein.commend, description: @lutein.description, name: @lutein.name, picture: @lutein.picture }
    end

    assert_redirected_to lutein_path(assigns(:lutein))
  end

  test "should show lutein" do
    get :show, id: @lutein
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lutein
    assert_response :success
  end

  test "should update lutein" do
    patch :update, id: @lutein, lutein: { commend: @lutein.commend, description: @lutein.description, name: @lutein.name, picture: @lutein.picture }
    assert_redirected_to lutein_path(assigns(:lutein))
  end

  test "should destroy lutein" do
    assert_difference('Lutein.count', -1) do
      delete :destroy, id: @lutein
    end

    assert_redirected_to luteins_path
  end
end
