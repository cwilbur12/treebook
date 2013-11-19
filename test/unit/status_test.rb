require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  test "a status requires content" do 
  	status = Status.new
  	assert !status.save
  	assert !status.errors[:content].empty? 
  end

  test "a status should be at least 2 letters long" do 
  	status = Status.new
  	status.content=("h")
  	assert !status.save
  	assert !status.errors[:content].empty? 
  end

  test "a status should not be able to be created without a userId" do 
  	status = Status.new
  	status.content=("Test")
  	assert !status.save
  	assert !status.errors[:user_id].empty? 
  end

end
