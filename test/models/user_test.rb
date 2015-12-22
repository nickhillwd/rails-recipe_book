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

  test "email validation should only accept vaild emails" do
    valid_addresses = %w[user@example.com USER@address.COM user@example.co.uk user.name@address.com user+name@address.com]
    valid_addresses.each do |valid_address|
      @user.user_email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test " email validation should reject invalid address" do
    invalid_address = %w[user@example,com user_at_foo.com user.name@example. foo@bar_baz.com foo@bar+baz.com]
    invalid_address.each do |invalid_address|
      @user.user_email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

end
