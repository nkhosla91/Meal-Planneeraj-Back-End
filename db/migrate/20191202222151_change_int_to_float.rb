class ChangeIntToFloat < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :activityLevel
    add_column :users, :activityLevel, :float
  end
end
