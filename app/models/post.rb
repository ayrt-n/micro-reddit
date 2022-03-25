class Post < ApplicationRecord
  belongs_to :user
  validates :link, presence: true, length: { minimum: 3 }
  validates :body, length: { maximum: 250 }
  validates :user, presence: true
end
