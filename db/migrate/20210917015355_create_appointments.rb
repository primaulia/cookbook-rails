class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.references :salon_service, null: false, foreign_key: true
      t.references :pet, null: false, foreign_key: true
      t.date :date
      t.timestamps
    end

    remove_reference :pets, :salon, index: true
  end
end
