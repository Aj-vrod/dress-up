class FixEndDateColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :bookings, :end_end, :end_date
  end
end
