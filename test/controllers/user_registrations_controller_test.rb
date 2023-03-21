require "test_helper"

class UserRegistrationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_registration = user_registrations(:one)
  end

  test "should get index" do
    get user_registrations_url, as: :json
    assert_response :success
  end

  test "should create user_registration" do
    assert_difference("UserRegistration.count") do
      post user_registrations_url, params: { user_registration: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show user_registration" do
    get user_registration_url(@user_registration), as: :json
    assert_response :success
  end

  test "should update user_registration" do
    patch user_registration_url(@user_registration), params: { user_registration: {  } }, as: :json
    assert_response :success
  end

  test "should destroy user_registration" do
    assert_difference("UserRegistration.count", -1) do
      delete user_registration_url(@user_registration), as: :json
    end

    assert_response :no_content
  end
end
