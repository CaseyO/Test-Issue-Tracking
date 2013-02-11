require 'test_helper'

class UserPicsControllerTest < ActionController::TestCase
  setup do
    @user_pic = user_pics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_pics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_pic" do
    assert_difference('UserPic.count') do
      post :create, user_pic: { caption: @user_pic.caption, date-modified: @user_pic.date-modified, id: @user_pic.id, img-path: @user_pic.img-path, tags: @user_pic.tags, title: @user_pic.title }
    end

    assert_redirected_to user_pic_path(assigns(:user_pic))
  end

  test "should show user_pic" do
    get :show, id: @user_pic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_pic
    assert_response :success
  end

  test "should update user_pic" do
    put :update, id: @user_pic, user_pic: { caption: @user_pic.caption, date-modified: @user_pic.date-modified, id: @user_pic.id, img-path: @user_pic.img-path, tags: @user_pic.tags, title: @user_pic.title }
    assert_redirected_to user_pic_path(assigns(:user_pic))
  end

  test "should destroy user_pic" do
    assert_difference('UserPic.count', -1) do
      delete :destroy, id: @user_pic
    end

    assert_redirected_to user_pics_path
  end
end
