class SessionsController < ApplicationController
  skip_before_filter :require_login
  
  def home
  end
  
  def new
  end
  
  def create
    @user = User.authenticate(params[:session][:email], params[:session][:password])
    if @user
      flash[:success] = "You've been logged in."
      session[:user_id] = @user.id
      redirect_to root_url
    else
      flash[:danger] = "There was a problem logging you in."
      redirect_to login_path
    end
end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You've been logged out successfully."
    redirect_to root_url
  end

end
