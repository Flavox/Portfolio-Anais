class Realisation < ApplicationRecord
  belongs_to :user
  has_many :photos
end
