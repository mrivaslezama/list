json.extract! list, :id, :name, :last_name, :rut, :phone, :location, :avatar, :user_id, :done, :created_at, :updated_at
json.url list_url(list, format: :json)
