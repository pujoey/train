class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :title, null: false
      t.string :content, null: false

      # t.belongs_to :user, index: true, foreign_key: true
      # t.belongs_to :trainer, index: true, foreign_key: true

      # Set relationship
      t.integer :trainer_id
      t.references :trainer, index: true, foreign_key: true
      t.integer :user_id
      t.references :user, index: true, foreign_key: true



      t.timestamps null: false
    end
  end
end
