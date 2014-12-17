class Ride < ActiveRecord::Base
    # validates :seats, numericality: { only_integer: true, greater_than: 0,  less_than_or_equal_to: 9 }
    # validates :ride_insured, acceptance: {accept: true}
    # validates :waypoint_latitude, numericality: {greater_than_or_equal_to: -90,  less_than_or_equal_to: 90}
    # validates :waypoint_longitude, numericality: {greater_than_or_equal_to: -180,  less_than_or_equal_to: 180}
    
    belongs_to :user, inverse_of: :rides
    
    has_many :waypoints, inverse_of: :ride, dependent: :destroy
    accepts_nested_attributes_for :waypoints, :reject_if => :all_blank, :allow_destroy => true
    
    def build_legs
        previous = nil
        all_legs = []
        self.waypoints.each do |waypoint|
            if previous.nil?
                previous = waypoint
            else
                all_legs << Leg.new(waypoint_start_id: previous.id, waypoint_finish_id: waypoint.id)
                previous = waypoint
            end
        end
        return all_legs
    end
    
end