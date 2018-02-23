class Pet < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :location, presence: true

  def get_photo
    if self.photo = nil
      photo = "http://www.thedailyrecords.com/wp-content/uploads/2017/01/Beagle-Top-Most-Famous-Beautiful-Dogs-Breeds-2018.jpg"
      puts "the photo is... #{photo}"
    end
  end
end
