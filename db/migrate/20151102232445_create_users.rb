class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :account_name, null:false
      t.string :password_digest
      t.string :email, null:false
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :image_uri, default: 'default-profile-image.jpg'
      t.string :address1
      t.string :address2
      t.string :city
      t.integer :zip
      t.integer :current_weight
      t.integer :goal_weight
      t.date :reach_goal_by
      t.integer :height

      t.timestamps null: false
    end
  end
end
