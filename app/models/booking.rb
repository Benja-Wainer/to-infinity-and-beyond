class Booking < ApplicationRecord
  belongs_to :jetpack
  belongs_to :user

  validates :booking_date, :jetpack_id, :user_id, presence: true
  validates :terms_and_conditions, acceptance: true

  def pending?
    status == 'pending'
  end
end
