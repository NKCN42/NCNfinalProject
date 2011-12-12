class UsersController < ApplicationController
  def new
    
  end
  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts
    @title = "Control Panel"
  end
end
