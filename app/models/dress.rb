class Dress < ApplicationRecord
  has_many :bookings
  belongs_to :user
  has_one_attached :image
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  CATEGORIES = ['Bridal Dresses', 'Bridesmaids Dresses', 'Casual Dresses', 'Going Out Dresses', 'Occasion Dresses', 'Summer Dresses', 'Work Dresses']

  validates :title, :description, :category, :color, :address, presence: true
  validates :price, presence: true, numericality: true
  validates :category, inclusion: { in: CATEGORIES }
end
