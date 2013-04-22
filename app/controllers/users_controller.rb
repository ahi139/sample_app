class UsersController < ApplicationController
  
  # Profile page
  def show
    @user = User.find(params[:id])
  end
  
  # Sign up page
  
  def new
    @title = "Sign up"
  end
  
end
