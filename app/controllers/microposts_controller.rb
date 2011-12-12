class MicropostsController < ApplicationController
  before_filter :authenticate
  
  def create
    @micropost = current_user.microposts.build(params[:micropost])
    if(@micropost.save)
      flash[:success] = "Post created."
      redirect_to current_user
    else 
      render root_path
  end
  
  def destroy
    
  end
end