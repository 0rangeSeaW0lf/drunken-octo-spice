class Leg < ActiveRecord::Base
    belongs_to :waypoint_start, :foreign_key => 'waypoint_start_id', :class_name => Waypoint, dependent: :destroy
    belongs_to :waypoint_finish, :foreign_key => 'waypoint_finish_id', :class_name => Waypoint, dependent: :destroy
end

#   belongs_to :user
#
#   belongs_to :opponent, :foreign_key => 'opponent_id', :class_name => User