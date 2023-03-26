class Album < ApplicationRecord
  has_one_attached :image

  belongs_to :schedule
end
