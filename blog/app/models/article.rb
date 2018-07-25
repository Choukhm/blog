class Article < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :cagory, optional: true
  has_many :comments
  has_many :likes
end
