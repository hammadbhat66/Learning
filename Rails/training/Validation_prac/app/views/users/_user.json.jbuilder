json.extract! user, :id, :name, :age, :email, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
