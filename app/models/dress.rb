class Dress < ApplicationRecord
  has_many :bookings
  belongs_to :user

  validates :title, :description, :category, :photo, :color, presence: true
  validates :price, presence: true, numericality: true
end
