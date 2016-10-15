require 'test_helper'

class ArtclesControllerTest < ActionController::TestCase
  setup do
    @artcle = artcles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artcles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artcle" do
    assert_difference('Artcle.count') do
      post :create, artcle: { auther: @artcle.auther, body: @artcle.body, title: @artcle.title }
    end

    assert_redirected_to artcle_path(assigns(:artcle))
  end

  test "should show artcle" do
    get :show, id: @artcle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artcle
    assert_response :success
  end

  test "should update artcle" do
    patch :update, id: @artcle, artcle: { auther: @artcle.auther, body: @artcle.body, title: @artcle.title }
    assert_redirected_to artcle_path(assigns(:artcle))
  end

  test "should destroy artcle" do
    assert_difference('Artcle.count', -1) do
      delete :destroy, id: @artcle
    end

    assert_redirected_to artcles_path
  end
end
