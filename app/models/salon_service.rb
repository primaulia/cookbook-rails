class SalonService < ApplicationRecord
  belongs_to :salon
  monetize :price_cents
end
