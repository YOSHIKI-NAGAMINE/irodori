class Achevement < ApplicationRecord
  has_one_attached :image, dependent: :destroy
  belongs_to :user


  validates :goal_number, uniqueness: { scope: :user_id,
    message: "指定の目標が既にあります。編集をしてください。" }
end
