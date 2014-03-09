class UsersController < ApplicationController
  before_action :require_user, only: [:show]
  
  def new
    @users = User.all
    render :new
  end
  
  def create
    @user = User.find(user_params)
    
    if @user.save
      login!(@user)            
      redirect_to user
    else
      flash.now[:errors] = @user.errors.messages
      render :new
  end
  
  def show
    @user = User.find(params[:id])
    render :show
  end
  
  private
  
  def user_params
    params.require(:user).permit(:email, :password)  
  end  
end
