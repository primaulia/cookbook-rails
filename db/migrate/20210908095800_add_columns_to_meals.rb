class AddColumnsToMeals < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :image_url, :string
    add_column :meals, :video_url, :string
  end
end
