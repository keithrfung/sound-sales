require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(firstName: "Example", lastName: "User", password: "password",
                    password_confirmation: "password", userName: "example")
  end

  test "should be valid" do
    assert @user.valid?
  end
  
  test "firstName should be present" do
    @user.firstName = "     "
    assert_not @user.valid?
  end

  test "lastName should be present" do
    @user.lastName = "     "
    assert_not @user.valid?
  end

  test "userName should be present" do
    @user.userName = "     "
    assert_not @user.valid?
  end

  test "password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end

  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end

end
