require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
    @user = User.new(user_name: "Example User", user_email: "user@example.com", password: "Password1", password_confirmation: "Password1")
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

  test "email adresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.user_email = @user.user_email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end

  test "email should be parsed in lower case" do
    mixed_case_email = "NiCk@ExAmPlE.cOm"
    @user.user_email = mixed_case_email
    @user.save
    assert_equal mixed_case_email.downcase, @user.reload.user_email
  end

  test "password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid? 
  end

  test "password should have a minimum length of 6 characters" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end

end
