class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  def current_user=(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  helper_method :current_user

  def logged_in?
    !!current_user
  end
  helper_method :logged_in?

  def user_logged_in?
    !!current_user
  end
  helper_method :user_logged_in?

  def authenticate!
    unless logged_in?
      redirect_to auth_path(provider: 'facebook')
    end
  end

end
