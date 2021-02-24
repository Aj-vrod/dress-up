class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dress

  validates :start_date, :end_date, presence: true
  # validates :total_cost, presence: true, numericality: true
end
