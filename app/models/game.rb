class Game < ApplicationRecord
  belongs_to :map
  has_many :kids, through: :maps
end
