class Review < ApplicationRecord
  belongs_to :jetpack
  validates :content, presence: true
end
