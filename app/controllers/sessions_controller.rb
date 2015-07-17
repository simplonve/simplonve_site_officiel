class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      flash[:success] = "ok"
      redirect_to root_path
    else
        flash[:danger] = 'Invalid email/password combination' # Not quite right!
        render 'new'
    end
  end

  def destroy
      log_out if logged_in?
      log_out
      redirect_to root_url
  end

end
