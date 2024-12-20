class Reservation < ApplicationRecord
  # Validation
  validates :reservation_date, presence: true
  validates :status, presence: true, length: { maximum: 20 }

  # Association
  belongs_to :book
  belongs_to :member
end
