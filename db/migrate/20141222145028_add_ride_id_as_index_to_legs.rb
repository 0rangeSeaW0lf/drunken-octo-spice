class AddRideIdAsIndexToLegs < ActiveRecord::Migration
  def change
    add_index :legs, :ride_id
  end
end
