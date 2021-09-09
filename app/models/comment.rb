class Comment < ApplicationRecord
  belongs_to :meal

  validates :content, presence: true
end
