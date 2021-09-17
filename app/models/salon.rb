class Salon < ApplicationRecord
  has_many :salon_services, dependent: :destroy
end
