class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.integer :calories
      t.integer :carbs
      t.integer :fat
      t.integer :protein
    end
  end
end
