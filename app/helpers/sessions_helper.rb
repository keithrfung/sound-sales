module SessionsHelper

	# Logs in a user as long as browser is open
  def log_in(user)
    session[:user_id] = user.id
  end

  # Return the user logged in
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # Test if a user is logged in; in = true
  def logged_in?
    !current_user.nil?
  end

end
