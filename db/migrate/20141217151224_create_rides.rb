class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.integer :user_id
      t.integer :seats
      t.text :details
      t.string :luggage_size

      t.timestamps
    end
    add_index :rides, :user_id
  end
end
