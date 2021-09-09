class Meal < ApplicationRecord
  has_many :comments, dependent: :destroy
end
