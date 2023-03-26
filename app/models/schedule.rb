class Schedule < ApplicationRecord
  has_one_attached :image

  belongs_to :siori
  has_many :albums
end
