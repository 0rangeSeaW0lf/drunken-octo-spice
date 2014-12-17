class Ride < ActiveRecord::Base
    validates :ride_seats, numericality: { only_integer: true, greater_than: 0,  less_than_or_equal_to: 9 }
    # validates :ride_insured, acceptance: {accept: true}
    
    belongs_to :user, inverse_of: :rides
    
    has_many :waypoints, :dependent => :destroy, inverse_of: :ride
    accepts_nested_attributes_for :waypoints, :reject_if => :all_blank
    
end
