class SioriUser < ApplicationRecord
  belongs_to :siori
  belongs_to :user
end
