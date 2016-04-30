class SessionsController < ApplicationController
  
  def new
  end

   def create
    user = User.find_by(username: params[:session][:username])

    if params[:session][:password] == User.find_by(username: user.username).password
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid username or password'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

end
