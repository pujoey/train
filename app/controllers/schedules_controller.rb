class SchedulesController < ApplicationController

  def index
    @schedules = User.find(current_user).schedules

    # calendar testing
    calendar_month
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      # injection into current_user.schedules
      User.find(current_user).schedules << @schedule
      flash[:notice] = "You have successfully signed up!"
      redirect_to schedules_path
    else
      render new_schedule_path
    end
  end


  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    @schedule = Schedule.find(params[:id])
    respond_to do |format|
      if @schedule.update(schedule_params)
        format.html { redirect_to @schedule, notice: 'Schedule was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @schedule = Schedule.find(params[:id])
  end


    # Never trust parameters from the scary internet, only allow the white list through.
    def schedule_params
      params.require(:schedule).permit(:title, :description, :area_focus, :start_date, :end_date, :frequency_interval)
    end

    def calendar_month
      @date ||= params[:month] ? Date.parse(params[:month]) : Date.today
    end

    def next_month
      calendar_month.next_month.strftime("%h %Y")
    end

    def last_month
      calendar_month.last_month.strftime("%h %Y")
    end

    def this_month
      calendar_month.strftime("%B %Y")
    end

    def days_in_month
      @days_in_month ||= Time.days_in_month(
        calendar_month.month,
        calendar_month.year
      )
    end

    def month_begins_on
      calendar_month.beginning_of_month.wday + 1
    end

    def number_of_weeks
      ((month_begins_on + days_in_month - 1) / 7.0).ceil
    end

    def day_number(i, j)
      @day ||= 0
      day_number_in_month = (1 + j + (i*7))

      if day_number_in_month >= month_begins_on && @day < days_in_month
        @day += 1
      end
    end

    helper_method :next_month, :last_month, :days_in_month, :this_month
    helper_method :month_begins_on, :number_of_weeks, :calendar_month
    helper_method :day_number
end
