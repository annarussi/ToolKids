class Avatar < ApplicationRecord
  has_many :kids
  has_one_attached :photo
end
