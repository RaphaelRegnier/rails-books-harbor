class Book < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy
  validates :title, :price, :category, presence: true
end
