class MessagesController < ApplicationController

  def index
    @messages = Message.all
    @users = User.all
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(user_params)
    if @message.save
      flash[:notice] = "You have successfully signed up!"
      redirect_to root_path
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
    redirect_to root_path
  end

end
