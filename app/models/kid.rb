class Kid < ApplicationRecord
  belongs_to :user
  belongs_to :avatar
  has_many :games, dependent: :destroy

  validates :nickname, :age, presence: true
end
