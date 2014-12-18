class Leg < ActiveRecord::Base
    belongs_to :waypoint_start, :foreign_key => 'waypoint_id', :class_name => Waypoint
    belongs_to :waypoint_finish, :foreign_key => 'waypoint_id', :class_name => Waypoint
end

#   belongs_to :user
#
#   belongs_to :opponent, :foreign_key => 'opponent_id', :class_name => User