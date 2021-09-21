class Pet < ApplicationRecord
  belongs_to :user
  has_many :pet_categories, dependent: :nullify
  has_many :categories, through: :pet_categories
  has_one_attached :avatar
  has_many :appointments
end
