class Order < ApplicationRecord
  belongs_to :user
  belongs_to :book
  has_attachments :photos, maximum: 3
  validates :start_time, :end_time, presence: true
  validates_uniqueness_of :user_id,  scope: :book_id
  default_scope { order(start_time: :asc) }
end
