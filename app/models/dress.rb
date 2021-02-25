class Dress < ApplicationRecord
  has_many :bookings
  belongs_to :user
  has_one_attached :image

  CATEGORIES = ['Bridal Dresses', 'Bridesmaids Dresses', 'Casual Dresses', 'Going Out Dresses', 'Occasion Dresses', 'Summer Dresses', 'Work Dresses']

  validates :title, :description, :category, :color, presence: true
  validates :price, presence: true, numericality: true
  validates :category, inclusion: { in: CATEGORIES }

  # PgSearch functionality
  include PgSearch::Model
  pg_search_scope :search_dresses,
    against: [ :title, :description, :category, :price, :user.address ],
    using: {
      tsearch: { prefix: true } # now words that are not finished typing will return something!
    }
end
