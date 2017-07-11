class Book < ApplicationRecord
  belongs_to :user
  has_many :orders
  validates :title, :price, :category, presence: true
end
