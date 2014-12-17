class Leg < ActiveRecord::Base
    belongs_to :waypoint_start, :foreign_key => 'waypoint_start_id', :class_name => Waypoint
    belongs_to :waypoint_finish, :foreign_key => 'waypoint_finish_id', :class_name => Waypoint
end
