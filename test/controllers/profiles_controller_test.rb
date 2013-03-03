require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  setup do
    @user = User.new(email: "lol@lol.lol", username: "LOLOLOLOLOL", password: "LOLlol101", admin: true)
    @user.skip_confirmation!
    @user.save
    sign_in(@user)
    @profile = profiles(:one)
    @profile.user_id = @user.id
  end
  
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post :create, profile: { about_me: @profile.about_me, github: @profile.github, name: @profile.name, user_id: @user.id}
    end

    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should show profile" do
    get :show, id: @profile.user.username
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile.user.username
    assert_response :success
  end

  test "should update profile" do
    put :update, id: @profile.user.username, profile: { about_me: @profile.about_me, github: @profile.github, name: @profile.name }
    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete :destroy, id: @profile
    end

    assert_redirected_to profiles_path
  end
end