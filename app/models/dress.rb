class Dress < ApplicationRecord
  has_many :bookings
  belongs_to :user
  has_one_attached :image
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  CATEGORIES = ['Bridal Dresses', 'Bridesmaids Dresses', 'Casual Dresses', 'Going Out Dresses', 'Occasion Dresses', 'Summer Dresses', 'Work Dresses']
  COLORS = ['Red', 'Green', 'Blue', 'Black', 'White', 'Grey', 'Yellow', 'Purple', 'Pink', 'Orange', 'Silver', 'Gold', 'Multicolored', 'Beige']

  validates :title, :description, :category, :color, :address, presence: true
  validates :price, presence: true, numericality: true
  validates :category, inclusion: { in: CATEGORIES }

  # PgSearch functionality
  include PgSearch::Model
  pg_search_scope :search_dresses,
    against: [ :title, :description, :category, :price, :address, :color ],
    using: {
      tsearch: { prefix: true } # now words that are not finished typing will return something!
    }
end
