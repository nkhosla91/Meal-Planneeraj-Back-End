class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :carbs
      t.integer :fat
      t.integer :protein
      t.integer :calories
    end
  end
end
