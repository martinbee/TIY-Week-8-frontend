class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def log_in(user)
    session[:user_name] = user.id
  end

  def log_out
    session.delete(:user_name)
    session.delete(:id)
    session.delete(:token)
  end
end
