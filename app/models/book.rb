class Book < ApplicationRecord
  belongs_to :category

  # Validation
  validates_presence_of :title, :author, :category
  validates_uniqueness_of :title
  validates_numericality_of :year, greater_than: 0
  validate :year_cannot_be_in_the_future

  # Image Attachment (using Active Storage)
  has_one_attached :image

  # Custom validation
  private

  def year_cannot_be_in_the_future
    if year.present? && year > Date.today.year
      errors.add(:year, "can't be in the future")
    end
  end
end
