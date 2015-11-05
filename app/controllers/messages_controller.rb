class MessagesController < ApplicationController

  def index
      @messages = current_user.messages
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      current_user.messages << @message
      flash[:notice] = "New message!"
      redirect_to messages_path
    else
      render 'new'
    end
  end

  def edit
    @message = Message.find(params[:id])
  end

  def update
    @message = Message.find(params[:id])

    respond_to do |format|
      if @message.update(message_params)
        format.html { redirect_to messages_path, notice: 'Message was successfully updated.' }
      else
        format.html { render :edit }
      end
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
    params.require(:message).permit(:title, :content)
  end

end
