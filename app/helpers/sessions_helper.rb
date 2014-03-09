module SessionsHelper
  
  def login!(user)
    session[:session_token] = @user.reset_session_token! 
  end
  
  def current_user
    return nil if session[:session_token].nil?
    @current_user ||= User.find_by_session_token(session[:session_token])
  end
  
  def logged_in?
    !!current_user
  end
  
  def logout!
    current_user.reset_session_token! if logged_in?
    session[:session_token] = nil
  end
  
  def require_user
    redirect_to new_session_url unless logged_in?
  end
  
end
