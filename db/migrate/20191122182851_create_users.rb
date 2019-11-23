class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :gender
      t.integer :age
      t.integer :height
      t.integer :weight
      t.integer :activityLevel
      t.integer :BMR
      t.integer :calories
      t.integer :carbPercent
      t.integer :fatPercent
      t.integer :proteinPercent
      t.integer :carbCalories
      t.integer :fatCalories
      t.integer :proteinCalories
    end
  end
end
