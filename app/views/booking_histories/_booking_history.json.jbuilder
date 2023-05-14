json.extract! booking_history, :id, :user_id, :room_id, :checkIn, :checkOut, :description, :created_at, :updated_at
json.url booking_history_url(booking_history, format: :json)
