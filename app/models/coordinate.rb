class Coordinate < ApplicationRecord
  belongs_to :user
  has_many :cloth_coordinates, dependent: :destroy
  has_many :cloths, through: :cloth_coordinates

  validates :memo, presence: true
end
