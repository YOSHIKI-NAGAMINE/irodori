class Siori < ApplicationRecord
  has_one_attached :image

  has_many :siori_users, dependent: :destroy
  has_many :users, through: :siori_users
  has_many :schedules
  has_many :messages
end
