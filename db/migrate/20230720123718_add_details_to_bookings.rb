class AddDetailsToBookings < ActiveRecord::Migration[7.0]
  def change
    change_column :bookings, :status, default => "pending"
  end
end
