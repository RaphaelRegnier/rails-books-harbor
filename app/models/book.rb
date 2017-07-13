class Book < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy
  validates :title, :price, :category, presence: true
  has_attachment :photo

  def self.search(search)
    where("title ILIKE ? OR author ILIKE ?", "%#{search}%", "%#{search}%")
  end

end
