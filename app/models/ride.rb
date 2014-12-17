class Ride < ActiveRecord::Base
    belongs_to :user, inverse_of: :rides
    has_many :waypoints
end
