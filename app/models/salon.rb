class Salon < ApplicationRecord
  has_many :pets, dependent: :destroy
end
