class Jetpack < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :title, :model, :price, :description, presence: true
  validates :description, length: { maximum: 255 }
  validates :title, length: { minimum: 2 }
end
