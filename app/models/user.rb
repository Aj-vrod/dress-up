class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :dresses, dependent: :destroy
  has_one_attached :avatar

  validates :first_name, :last_name, :address, presence: true
end
