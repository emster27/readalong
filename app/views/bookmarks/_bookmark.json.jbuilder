json.extract! bookmark, :id, :page_id, :recommendations, :reader_id,
              :created_at, :updated_at
json.url bookmark_url(bookmark, format: :json)
