class Waypoint < ActiveRecord::Base
    # validates :waypoint_latitude, numericality: {greater_than_or_equal_to: -90,  less_than_or_equal_to: 90}
    # validates :waypoint_longitude, numericality: {greater_than_or_equal_to: -180,  less_than_or_equal_to: 180}
    
    belongs_to :ride, inverse_of: :waypoints
    has_many :legs
end

# https://github.com/theFirehoseProject/chess/blob/master/app/models/game.rb