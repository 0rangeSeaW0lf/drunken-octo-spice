class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :user_id
      t.string :given_name
      t.string :surname
      t.integer :birth_year
      t.string :gender

      t.timestamps
    end
    add_index :accounts, :user_id
  end
end
