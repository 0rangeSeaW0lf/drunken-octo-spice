class CreateLegs < ActiveRecord::Migration
  def change
    create_table :legs do |t|
      t.integer :waypoint_start_id
      t.integer :waypoint_finish_id
      t.integer :leg_cost
      t.integer :leg_seats
      
      t.timestamps
    end
    add_index :legs, :waypoint_start_id
    add_index :legs, :waypoint_finish_id
    remove_column :waypoints, :leg_seats
    remove_column :waypoints, :leg_cost
  end
end
