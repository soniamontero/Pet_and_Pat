class Booking < ApplicationRecord

  belongs_to :pet
  belongs_to :user
  has_many :reviews

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, presence: true, inclusion: { in: %w(pending approved declined)}

  def reviewed?
    self.reviews.any?
  end

end




