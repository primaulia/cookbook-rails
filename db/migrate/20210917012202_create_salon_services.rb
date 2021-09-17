class CreateSalonServices < ActiveRecord::Migration[6.0]
  def change
    create_table :salon_services do |t|
      t.string :name
      t.monetize :price
      t.references :salon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
