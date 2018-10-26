json.extract! article, :id, :user_id, :subpage_id, :link, :title, :subtitle, :heading, :subheading, :weight, :body, :created_at, :updated_at
json.url article_url(article, format: :json)
