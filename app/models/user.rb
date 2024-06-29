class User < ApplicationRecord
  has_secure_password

  has_many :cloths
  has_many :coordinates

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before_validation { email.downcase! }

  validates :password, length: { in: 6..255 }, allow_nil: true, confirmation: true
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:password_digest] }

  enum role: { user: 0, admin: 1 }

  def admin?
    self.admin
  end
end

  
  