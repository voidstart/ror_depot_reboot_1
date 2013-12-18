require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should post create (login)" do
    post :create, username: "dw", password: "dw"
    assert_redirected_to admin_url
    assert_equal users(:one).id, session[:user_id]
  end

  test "should get destory" do
    get :destory
    assert_response :success
  end

end
