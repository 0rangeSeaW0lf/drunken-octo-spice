class AddTimeToWaypoints < ActiveRecord::Migration
  def change
    add_column :waypoints, :waypoint_time, :datetime
    rename_column :waypoints, :waypoint_latitute, :waypoint_latitude
    rename_column :rides, :departure_latitute, :departure_latitude
    rename_column :rides, :arrival_latitute, :arrival_latitude
  end
end
