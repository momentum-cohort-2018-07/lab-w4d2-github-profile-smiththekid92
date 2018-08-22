require 'test_helper'

class Profile2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile2 = profile2s(:one)
  end

  test "should get index" do
    get profile2s_url
    assert_response :success
  end

  test "should get new" do
    get new_profile2_url
    assert_response :success
  end

  test "should create profile2" do
    assert_difference('Profile2.count') do
      post profile2s_url, params: { profile2: {  } }
    end

    assert_redirected_to profile2_url(Profile2.last)
  end

  test "should show profile2" do
    get profile2_url(@profile2)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile2_url(@profile2)
    assert_response :success
  end

  test "should update profile2" do
    patch profile2_url(@profile2), params: { profile2: {  } }
    assert_redirected_to profile2_url(@profile2)
  end

  test "should destroy profile2" do
    assert_difference('Profile2.count', -1) do
      delete profile2_url(@profile2)
    end

    assert_redirected_to profile2s_url
  end
end
