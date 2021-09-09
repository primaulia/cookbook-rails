class AddMealidToComments < ActiveRecord::Migration[6.0]
  def change
    add_reference :comments, :meal, foreign_key: true
  end
end
