require 'test_helper'

class ChannelControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get new_message" do
    get :new_message
    assert_response :success
  end

  test "should get create_message" do
    get :create_message
    assert_response :success
  end

end
