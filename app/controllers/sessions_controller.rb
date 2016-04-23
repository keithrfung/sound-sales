class SessionsController < ApplicationController
  
  def new
  end

  def create
    user = User.find_by(userName: params[:session][:userName])
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
    else
      flash.now[:danger] = 'Invalid username or password'
      render 'new'
    end
  end

  def destroy
  end

end
