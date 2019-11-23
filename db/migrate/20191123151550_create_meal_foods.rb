class CreateMealFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :meal_foods do |t|
      t.integer :food_id
      t.integer :meal_id
    end
  end
end
