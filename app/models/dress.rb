class Dress < ApplicationRecord
  belongs_to :user, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: true
  validates :category, presence: true
  validates :color, presence: true
  validates :photo, presence: true
end
