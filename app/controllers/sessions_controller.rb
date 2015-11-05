class SessionsController < ApplicationController

  def new
  end



  def create
    user = User.find_by(account_name: params[:account_name])
    if user
      if user.authenticate(params[:password])
        $xuser = user
        session[:user_id] = user.id
        redirect_to user_path(current_user), notice: 'Logged in!'
      else
        flash.now.alert = 'Invalid login credentials - try again!'
        render 'new'
      end
    else
      user = Trainer.find_by(account_name: params[:account_name])
      if user
        if user.authenticate(params[:password])
          $xuser = user
          session[:user_id] = user.id
          redirect_to trainers_path, notice: 'Logged in!'
        else
          flash.now.alert = 'Invalid login credentials - try again!'
          render 'new'
        end
      else
        render 'new'
      end
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out!"
  end



end
