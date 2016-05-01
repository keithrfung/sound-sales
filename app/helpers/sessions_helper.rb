module SessionsHelper
  # Test if a user is logged in; in = true
  def logged_in?
    !current_user.nil?
  end
  
  def check_sale_permission?
    current_user.role?('Sales')
  end
end
