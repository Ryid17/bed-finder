class Bed < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :category, presence: true
  validates :city, presence: true
end

