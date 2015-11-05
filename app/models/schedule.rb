class Schedule < ActiveRecord::Base
  # define relationship
  belongs_to :user
  belongs_to :trainer

  def dates
    @current_end_date = end_date || start_date.end_of_year
    @step = frequency_interval.to_i
    @step = 1 if @step == 0
    (start_date..@current_end_date).step(@step).map {|date| date}
  end
end
