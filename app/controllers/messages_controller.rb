class MessagesController < ApplicationController

  def index
    @messages = Trainer.find(current_user).messages
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      Trainer.find(current_user.trainer_id).messages << @messages
      flash[:notice] = "You have successfully signed up!"
      redirect_to messages_path
    else
      render 'new'
    end
  end

  def show
  end

  def destroy
    @message = Message.find(params["id"])
    @message.destroy
    flash[:notice] = 'Message was successfully deleted from the world.'
    redirect_to messages_path
  end

  def message_params
    params.require(:message).permit(:account_name, :password, :password_confirmation, :email, :first_name, :middle_man, :last_name, :image_uri, :address1, :address2, :city, :zip, :current_weight, :goal_weight, :reach_goal_by, :height)
  end

end
