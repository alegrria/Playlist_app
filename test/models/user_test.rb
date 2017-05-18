require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(id: 1, first_name: "First Name", last_name: "Last Name", email: "user@example.com", user_name: "username")
  end

  test "should be valid" do
    assert @user.valid?
  end
end
