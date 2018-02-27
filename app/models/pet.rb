class Pet < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  mount_uploader :photo, PhotoUploader

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :location, presence: true

  include PgSearch
  pg_search_scope :search_full_text, :against => {
    :category => 'A',
    :name => 'B',
    :description => 'C'
  }
  end
