module SessionsHelper
  # Test if a user is logged in; in = true
  def logged_in?
    !current_user.nil?
  end
end
