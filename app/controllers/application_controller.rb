class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

   def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def authenticate_user!
    redirect_to login_path, alert: "You must be logged in to access this page" unless current_user
  end
end
