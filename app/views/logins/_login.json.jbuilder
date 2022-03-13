json.extract! login, :id, :useremail, :usertype, :password, :reader_id, :created_at, :updated_at
json.url login_url(login, format: :json)
