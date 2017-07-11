class Order < ApplicationRecord
  belongs_to :user
  belongs_to :book
validates :start_time, :end_time, presence: true, uniqueness: true
end
