require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
    @user = User.new(user_name: "Example User", user_email: "user@example.com")
  end

  test "should be vaild" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.user_name = "     "
    assert_not @user.valid?
  end

  test "email should be present" do
    @user.user_email = "      "
    assert_not @user.valid?
  end

  test "name should not be too long less than 50 characters" do
    @user.user_name = "a" * 51
    assert_not @user.valid?
  end

  test "email should not be too long less than 255 characters for dB" do
    @user.user_email = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end

end
