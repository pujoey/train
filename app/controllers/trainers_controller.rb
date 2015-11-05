class TrainersController < ApplicationController
  # before_action :authorize, except: [:index, :show, :new, :create]

  def index
    @trainers = Trainer.all
  end

  def new
    @trainer = Trainer.new
  end

  def show
    @trainer = Trainer.find(params["id"])
  end

  def create
    @trainer = Trainer.new(trainer_params)
    if @trainer.save
      flash[:notice] = "You have successfully signed up!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    @trainer = Trainer.find(params["id"])
    @trainer.destroy
    flash[:notice] = 'User was successfully deleted from the world.'
    redirect_to root_path
  end

  def edit
    @trainer = Trainer.find(params[:id])
  end

  def update
    @trainer = Trainer.find(params[:id])
    respond_to do |format|
      if @trainer.update(trainer_params)
        format.html { redirect_to @trainer, notice: 'Trainer was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  private
    # Implement Strong Params
    def trainer_params
      params.require(:trainer).permit(:account_name, :password, :password_confirmation, :email, :first_name, :middle_man, :last_name, :image_uri, :address1, :address2, :city, :zip)
    end
end
