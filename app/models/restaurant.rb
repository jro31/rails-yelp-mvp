class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"].freeze
  has_many :reviews, dependent: :destroy #Destroys dependent reviews when the restaurant is deleted
  validates :name, :address, :category, :phone_number, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
