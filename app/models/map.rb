class Map < ApplicationRecord
  belongs_to :kid
  has_many :games
end
