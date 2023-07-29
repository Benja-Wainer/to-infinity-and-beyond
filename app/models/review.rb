class Review < ApplicationRecord
  belongs_to :jetpack
  belongs_to :user
end
