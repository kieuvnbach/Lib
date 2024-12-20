class Author < ApplicationRecord
    # Validation
    validates :name, presence: true, length: { maximum: 50 }
    validates :bio, length: { maximum: 200 }
  
    # Association
    has_many :books
  end
  