class AddDatetimeToReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :meal_time
    add_column :reservations, :meal_time, :datetime
  end
end
