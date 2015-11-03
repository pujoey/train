class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :area_focus
      t.date :start_date, default: Time.new
      t.date :end_date
      t.string :frequency_interval

      # Set relationship
      t.integer :trainer_id
      t.references :trainer, index: true, foreign_key: true
      t.integer :user_id
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
