class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  ::VALID_REST_CATEGORIES = [
    "chinese",
    "italian",
    "japanese",
    "french",
    "belgian"
  ]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: VALID_REST_CATEGORIES }
end
