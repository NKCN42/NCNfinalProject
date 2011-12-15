class UsersController < ApplicationController
  before_filter :authenticate, :only => [:show]
  def new
    
  end
  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts
    @title = "Control Panel"
  end
  private
  def authenticate 
    deny_access unless signed_in?
  end
end
