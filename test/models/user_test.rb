require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(firstName: "Example", lastName: "User", password: "password")
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


end
