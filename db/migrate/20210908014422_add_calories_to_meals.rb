class AddCaloriesToMeals < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :calories, :integer
    change_column :meals, :price, :float
  end
end
