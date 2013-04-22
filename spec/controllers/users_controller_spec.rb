require 'spec_helper'
require 'factory_girl_rails'
describe UsersController do
  
  render_views
  
  describe "GET 'show'" do
    # creates the user for testing
    before(:each) do
      @user = FactoryGirl.create(:user)
    end
    
    it "returns http success" do
      get :show, :id => @user.id
      response.should be_success
    end
    
    it "should fin dthe right user" do
      get :show, :id => @user.id
      assigns(:user).should == @user
    end
  end
  
  describe "GET 'new'" do
    it "returns http success" do
      get :new
      response.should be_success
    end
    
    it "should have the correct title" do 
      get :new
      response.should have_selector("title", 
                                    :content => "Sign up")
    end
  end
end

