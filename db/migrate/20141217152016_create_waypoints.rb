class CreateWaypoints < ActiveRecord::Migration
  def change
    create_table :waypoints do |t|
      t.integer :ride_id
      t.string :waypoint_name
      t.decimal :waypoint_latitute
      t.decimal :waypoint_longitude
      t.integer :leg_cost
      t.integer :leg_position
      t.integer :waypoint_seats

      t.timestamps
    end
    add_index :waypoints, :ride_id
    add_index :waypoints, :leg_position
  end
end
