class Member < ApplicationRecord
    # Validation
    validates :name, presence: true, length: { maximum: 50 }
    validates :email, presence: true, uniqueness: true, length: { maximum: 50 }, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :membership_date, presence: true
    validate :membership_date_not_in_future
  
    # Association
    has_many :reservations
    has_many :reviews
  
    private
  
    def membership_date_not_in_future
      if membership_date > Date.today
        errors.add(:membership_date, "can't be in the future")
      end
    end
  end
  