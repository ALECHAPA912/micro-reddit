class User < ApplicationRecord
  has_many :posts
  validates :name, presence: true, uniqueness: true, length: { in: 8..16 }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { in: 8..16 }
end
