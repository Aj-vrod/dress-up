class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :start_date
      t.string :end_end
      t.float :total_cost
      t.references :user, null: false, foreign_key: true
      t.references :dress, null: false, foreign_key: true


      t.timestamps
    end
  end
end
