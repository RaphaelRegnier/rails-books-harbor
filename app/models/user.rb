class User < ApplicationRecord
  has_many :books
  has_many :orders
  has_attachment  :avatar, accept: [:jpg, :png, :gif]
  has_attachment :photo
  validates :first_name, :last_name, presence: true
   validates_uniqueness_of :book_id,  scope: :order_id
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
