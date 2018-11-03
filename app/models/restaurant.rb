class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy #Destroys dependent reviews when the restaurant is deleted
  validates :name, :address, :category, :phone_number, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end
