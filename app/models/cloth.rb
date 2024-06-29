class Cloth < ApplicationRecord
 has_one_attached :image
  
  belongs_to :user
  has_many :cloth_coordinates, dependent: :destroy
  has_many :coordinates, through: :cloth_coordinates
  
  enum category: { tops: 0, bottoms: 1, shoes: 2 }

  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: categories.keys }
  
  
end
