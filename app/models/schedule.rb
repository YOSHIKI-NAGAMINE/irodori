class Schedule < ApplicationRecord
  has_one_attached :image

  belongs_to :siori
  has_many :albums

  validates :image, presence: true
  validates :day, presence: true
  validates :time, presence: true
  validates :title, presence: true
  validates :place, presence: true
end
