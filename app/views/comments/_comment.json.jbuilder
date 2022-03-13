json.extract! comment, :id, :comment, :page_name, :reader, :reader_email,
              :page_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
