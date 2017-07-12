class Order < ApplicationRecord
  belongs_to :user
  belongs_to :book
  has_attachments :photos, maximum: 3
  validates :start_time, :end_time, presence: true, uniqueness: true

end
