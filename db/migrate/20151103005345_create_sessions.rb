class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.string :area_focus
      t.date :start_date, default: Time.new
      t.date :end_date
      t.string :frequency_interval

      t.timestamps null: false
    end
  end
end
