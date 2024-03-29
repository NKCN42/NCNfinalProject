class SessionsController < ApplicationController
  def new
    @title = "Nutrition Simplified -- Sign in"
  end
  def create
    user = User.authenticate(params[:session][:username],
                             params[:session][:password])
    if(user.nil?)
      flash.now[:error] = "Invalid username."
      @title = "Nutrition Simplified -- Sign in"
      render 'new'
    else 
      sign_in user
      redirect_to user
    end
  end
  def destroy
    sign_out
    redirect_to root_path
  end

end
