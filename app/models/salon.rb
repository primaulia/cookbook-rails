class Salon < ApplicationRecord
  has_many :salon_services, dependent: :destroy
  has_many :appointments, through: :salon_services
end
