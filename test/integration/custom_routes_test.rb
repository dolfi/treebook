require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  test "that /login route opens the login page" do
    get '/login'
    assert_response :success
  end

    test "that /login route opens the logout page" do
    get '/logout'
    assert_response :redirect
    assert_redirected_to '/'
  end

   test "that /login route opens the sign up page" do
    get '/register'
     assert_response :success

  end

  test "that a profile page works" do
      get '/vcavallaro'
      assert_response :success
  end
end
