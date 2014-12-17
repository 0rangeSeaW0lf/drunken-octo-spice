class ChangeRidingStuff < ActiveRecord::Migration
  def change
    remove_column :rides, :departure_name
    remove_column :rides, :departure_latitude
    remove_column :rides, :departure_longitude
    remove_column :rides, :arrival_name
    remove_column :rides, :arrival_latitude
    remove_column :rides, :arrival_longitude
    remove_column :rides, :departure_time
    remove_column :rides, :arrival_time
    remove_column :rides, :ride_cost
    add_column :waypoints, :leg_seats, :integer
    add_column :rides, :ride_insured, :boolean
  end
end

