class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  has_secure_password

  has_many :posts, dependent: :destroy
  has_many :comments, through: :posts
end
