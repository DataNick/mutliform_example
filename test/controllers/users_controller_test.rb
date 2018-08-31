require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { biography: @user.biography, date_of_birth: @user.date_of_birth, email: @user.email, instagram_name: @user.instagram_name, name: @user.name, password: @user.password, twitter_name: @user.twitter_name, website: @user.website } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { biography: @user.biography, date_of_birth: @user.date_of_birth, email: @user.email, instagram_name: @user.instagram_name, name: @user.name, password: @user.password, twitter_name: @user.twitter_name, website: @user.website } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
