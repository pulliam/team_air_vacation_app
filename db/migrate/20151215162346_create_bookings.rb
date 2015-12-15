class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :guest, references: :users
      t.references :listing
    end
  end
end
