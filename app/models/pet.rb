class Pet < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :location, presence: true
end
