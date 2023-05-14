class CreateBookingHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :booking_histories do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :room, null: false, foreign_key: true
      t.date :checkIn
      t.date :checkOut
      t.string :description

      t.timestamps
    end
  end
end
