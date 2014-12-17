class Account < ActiveRecord::Base
    validates :given_name, :surname, prensence: true
    validates :birth_year, numericality: {integer_only: true, less_than_or_equal_to: (Time.now.year - 18) }
    
    has_one :user, inverse_of: :account
    accepts_nested_attributes_for :user, allow_destroy: true, reject_if: :all_blank
end
