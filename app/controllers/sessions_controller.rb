class SessionsController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.find_by_credentials(
      params[:user][:email],
      params[:user][:password]
    )
    if @user
      login!(@user)
      redirect_to root_url
    else
      flash[:errors] = ["Incorrect username and/or password"]
      render :new
    end
  end
  
end
