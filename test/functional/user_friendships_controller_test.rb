require 'test_helper'

class UserFriendshipsControllerTest < ActionController::TestCase
  context "#new" do
  	context "when not logged in" do 
  		should "redirect to the login page" do 
  			get :new
  			assert_response :redirect
  		end
  	end

  	context "when user is logged in" do
  		setup do
  			sign_in users(:cory)
  		end

  		should "redirect to a successful" do
  			get :new
  			assert_response :success
  		end

    end
  end
end
