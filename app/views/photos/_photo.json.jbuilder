json.extract! photo, :id, :page_name, :caption, :sequence, :created_at, :updated_at
json.url photo_url(photo, format: :json)
