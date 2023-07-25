class Jetpack < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings

  validates :title, :model, :price, :description, presence: true
  validates :description, length: { maximum: 100 }
  validates :title, length: { minimum: 2 }
end
