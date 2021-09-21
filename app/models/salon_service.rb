class SalonService < ApplicationRecord
  belongs_to :salon
  has_many :appointments
  
  monetize :price_cents
end
