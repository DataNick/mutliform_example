json.extract! user, :id, :name, :password, :date_of_birth, :email, :biography, :twitter_name, :instagram_name, :website, :created_at, :updated_at
json.url user_url(user, format: :json)
