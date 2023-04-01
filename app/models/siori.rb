class Siori < ApplicationRecord
  has_one_attached :image

  has_many :siori_users, dependent: :destroy
  has_many :users, through: :siori_users
  has_many :schedules
  has_many :messages

  validates :image, presence: true
  validates :title, presence: true
  validates :start_day, presence: true
  validates :day, presence: true

end
