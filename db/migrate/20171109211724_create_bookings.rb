class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.integer :space_id
      t.integer :renter_id
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
