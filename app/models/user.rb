class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings # bookings as a client
  has_many :jetpacks, dependent: :destroy
  has_many :bookings_as_owner, through: :jetpacks, source: :bookings
end
