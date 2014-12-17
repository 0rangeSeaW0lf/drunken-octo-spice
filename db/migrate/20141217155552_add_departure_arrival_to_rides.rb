class AddDepartureArrivalToRides < ActiveRecord::Migration
  def change
    add_column :rides, :departure_name, :string
    add_column :rides, :departure_latitute, :decimal
    add_column :rides, :departure_longitude, :decimal
    add_column :rides, :arrival_name, :string
    add_column :rides, :arrival_latitute, :decimal
    add_column :rides, :arrival_longitude, :decimal
  end
end
