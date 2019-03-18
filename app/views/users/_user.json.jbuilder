json.extract! user, :first_name, :last_name, :username, :email
json.url user_url(user, format: :json)
