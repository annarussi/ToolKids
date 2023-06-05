class Kid < ApplicationRecord
  belongs_to :user
  belongs_to :avatar
  has_many :maps
  has_many :games, through: :maps
end
