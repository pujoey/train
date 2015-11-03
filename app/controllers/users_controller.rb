class UsersController < ApplicationController
  # before_action :authorize, except: [:index, :show, :new, :create]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You have successfully signed up!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    @user = User.find(params["id"])
    @user.destroy
    flash[:notice] = 'User was successfully deleted from the world.'
    redirect_to root_path
  end

  private
    # Implement Strong Params
    def user_params
      params.require(:user).permit(:account_name, :email, :password, :password_confirmation)
    end
end
