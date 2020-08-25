class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Logged in"
    else
      flash.now[:notice] ="Mail or Password incorrect"
      render action: :new
    end
  end

  def destroy
    session[:user_id]=nil
    redirect_to root_url, notiice: "Correctly logged out"
  end
end
