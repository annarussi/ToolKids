class Game < ApplicationRecord
  belongs_to :kid

  has_many_attached :photos
  has_many_attached :videos
end
