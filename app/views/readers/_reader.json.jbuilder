json.extract! reader, :id, :reader_name, :email, :created_at, :updated_at
json.url reader_url(reader, format: :json)
