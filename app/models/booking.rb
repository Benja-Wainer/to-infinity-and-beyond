class Booking < ApplicationRecord
  belongs_to :jetpack
  belongs_to :user

  validates :booking_date, :jetpack_id, :user_id, presence: true
end
