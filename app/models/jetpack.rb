class Jetpack < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :reviews, dependent: :destroy

  validates :title, :model, :price, :description, presence: true
  validates :description, length: { maximum: 100 }
  validates :title, length: { minimum: 2 }

  include PgSearch::Model

  pg_search_scope :search_by_model_and_description,
    against: [ :title, :description ],
    using: {
      tsearch: { prefix: true }
    }
end
