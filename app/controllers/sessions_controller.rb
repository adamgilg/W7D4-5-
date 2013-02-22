class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])

    if user
      user.reset_token
      session[:session_token] = user[:session_token]
      redirect_to products_path
    else
      render 'new'
    end
  end

  def destroy
    current_user.delete_token
    session[:token] = nil
    redirect_to new_sessions_path
  end
end
