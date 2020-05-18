class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :user_id, null: false, foreign_key: true
      t.references :bed_id, null: false, foreign_key: true
      t.integer :start_date

      t.timestamps
    end
  end
end
