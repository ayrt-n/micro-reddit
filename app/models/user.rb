class User < ApplicationRecord
  has_many :posts

  validates :username, presence: true, uniqueness: true, length: { in: 1..20 }
  validates :password, presence: true, length: { minimum: 8 }
  validates :email, presence: true
end
