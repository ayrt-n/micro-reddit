class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :link, presence: true, length: { minimum: 3 }
  validates :body, presence: true, length: { maximum: 250 }
end
