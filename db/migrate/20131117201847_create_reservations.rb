class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.time :meal_time
      t.integer :party_size
      t.timestamps
    end
  end
end
