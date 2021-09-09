class Customer < ApplicationRecord
  validates :name, presence: true, length: { minimum: 5 }
  validates :address, presence: true

  
end
