class Waypoint < ActiveRecord::Base
    # validates :waypoint_latitude, numericality: {greater_than_or_equal_to: -90,  less_than_or_equal_to: 90}
    # validates :waypoint_longitude, numericality: {greater_than_or_equal_to: -180,  less_than_or_equal_to: 180}
    
    belongs_to :ride, inverse_of: :waypoints
    
    has_many :start_legs, foreign_key: "waypoint_start_id", :class_name => Leg
    has_many :finish_legs, foreign_key: "waypoint_finish_id", :class_name => Leg
    
end

#   has_many :games
#
#   has_many :challenged_games, foreign_key: "opponent_id", :class_name => Game