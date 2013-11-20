require 'test_helper'

class UserFriendshipTest < ActiveSupport::TestCase
  should belong_to(:user)
  should belong_to(:friend)

  test "creating friendship works without raising exception" do 
  	assert_nothing_raised do
  	 	UserFriendship.create user: users(:cory), friend: users(:trevor)
    end
  end

end
