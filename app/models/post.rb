class Post < ApplicationRecord
  validates :title, :content, :date, presence: true
  has_many :comments
end
