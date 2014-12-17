class AddRideCostDepartureArrivalToRides < ActiveRecord::Migration
  def change
    add_column :rides, :departure_time, :datetime
    add_column :rides, :arrival_time, :datetime
    add_column :rides, :ride_cost, :integer
  end
end
