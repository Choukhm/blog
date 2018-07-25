class User < ApplicationRecord
  has_many :articles, dependent: :destroy
  has_many :comments
  has_many :likes
end
