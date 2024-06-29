class ClothCoordinate < ApplicationRecord
  belongs_to :coordinate
  belongs_to :cloth

  validates :coordinate_id, presence: true
  validates :cloth_id, presence: true
end
