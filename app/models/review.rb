class Review < ApplicationRecord
  # Validation
  validates :review_date, presence: true
  validates :comment, length: { maximum: 200 }

  # Association
  belongs_to :book
  belongs_to :member
end
