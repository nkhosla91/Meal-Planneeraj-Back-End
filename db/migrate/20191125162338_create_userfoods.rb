class CreateUserfoods < ActiveRecord::Migration[6.0]
  def change
    create_table :userfoods do |t|
      t.integer :user_id
      t.integer :food_id
      t.string :mealtime
    end
  end
end
