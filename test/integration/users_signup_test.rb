require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
 
  test "invalid sign up information" do

    get new_user_path
    assert_no_difference 'User.count' do
      post users_path, user: { name: "",
                      email: "user@invalid",
                      password: "foo",
                      password_confirmation: "bar"}
    end

    assert_template 'users/new'
  end

  test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post_via_redirect users_path, user: { user_name: "Example User",
                                            user_email: "user@example.com",
                                            password: "Password1",
                                            password_confirmation: "Password1" }
    end
    assert_template 'users/show'
    assert is_logged_in?
  end

end
