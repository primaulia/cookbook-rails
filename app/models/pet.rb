class Pet < ApplicationRecord
  belongs_to :salon

  has_many :pet_categories
  has_many :categories, through: :pet_categories
end
