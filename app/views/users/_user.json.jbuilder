json.extract! user, :id, :name, :phone, :description, :isAdmin, :created_at, :updated_at
json.url user_url(user, format: :json)
