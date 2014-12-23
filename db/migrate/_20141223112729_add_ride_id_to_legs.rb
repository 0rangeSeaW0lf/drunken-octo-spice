class AddRideIdToLegs < ActiveRecord::Migration
  def change
    add_column :legs, :ride_id, :integer
  end
end
