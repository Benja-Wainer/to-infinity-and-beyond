class Review < ApplicationRecord
  belongs_to :jetpack
  validates :content, presence: true
  belongs_to :user
end
