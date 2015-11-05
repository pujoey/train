class UsersController < ApplicationController
  # before_action :authorize, except: [:index, :show, :new, :create]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params["id"])
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
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = 'User was successfully deleted from the world.'
    redirect_to root_path
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  private
    # Implement Strong Params
    def user_params
      params.require(:user).permit(:account_name, :password, :password_confirmation, :email, :first_name, :middle_man, :last_name, :image_uri, :address1, :address2, :city, :zip, :current_weight, :goal_weight, :reach_goal_by, :height)
    end
end
