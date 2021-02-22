class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validations: all columns must be filled
  validates :first_name, :last_name, :address, presence: true
  # dependencies
  has_many :dresses, dependent: :destroy
end
