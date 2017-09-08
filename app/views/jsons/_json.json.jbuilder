json.extract! json, :id, :filename, :content_type, :file_contents, :created_at, :updated_at
json.url json_url(json, format: :json)
