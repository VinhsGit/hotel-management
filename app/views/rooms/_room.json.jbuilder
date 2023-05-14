json.extract! room, :id, :bedNum, :price, :description, :isAvailable, :created_at, :updated_at
json.url room_url(room, format: :json)
