json.extract! page, :id, :user_id, :link, :title, :subtitle, :heading, :subheading, :weight, :body, :created_at, :updated_at
json.url page_url(page, format: :json)
