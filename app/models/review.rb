class Review < ApplicationRecord
  belongs_to :booking

  validates :rating, presence: true, numericality: true, inclusion: { in: (0..5) }

end
