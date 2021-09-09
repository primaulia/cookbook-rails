class PetCategory < ApplicationRecord
  belongs_to :pet
  belongs_to :category
end
