class Category < ApplicationRecord
  has_many :pet_categories
  has_many :pets, through: :pet_categories
end
