class Appointment < ApplicationRecord
  belongs_to :salon_service
  belongs_to :pet
end
