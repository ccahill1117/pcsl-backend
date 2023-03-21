require "test_helper"

class DropdownOptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dropdown_option = dropdown_options(:one)
  end

  test "should get index" do
    get dropdown_options_url, as: :json
    assert_response :success
  end

  test "should create dropdown_option" do
    assert_difference("DropdownOption.count") do
      post dropdown_options_url, params: { dropdown_option: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show dropdown_option" do
    get dropdown_option_url(@dropdown_option), as: :json
    assert_response :success
  end

  test "should update dropdown_option" do
    patch dropdown_option_url(@dropdown_option), params: { dropdown_option: {  } }, as: :json
    assert_response :success
  end

  test "should destroy dropdown_option" do
    assert_difference("DropdownOption.count", -1) do
      delete dropdown_option_url(@dropdown_option), as: :json
    end

    assert_response :no_content
  end
end
