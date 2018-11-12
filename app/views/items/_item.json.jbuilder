json.extract! item, :id, :title, :heading, :body, :style_id, :user_id, :photo_id, :created_at, :updated_at
json.url item_url(item, format: :json)
