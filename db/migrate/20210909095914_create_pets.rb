class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.references :salon, foreign_key: true

      t.timestamps
    end
  end
end
