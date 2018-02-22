class Pet < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :location, presence: true
end
