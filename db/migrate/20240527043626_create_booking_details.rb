class CreateBookingDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :booking_details do |t|
      t.integer :sport_id
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
