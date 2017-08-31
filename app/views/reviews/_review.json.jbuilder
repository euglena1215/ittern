json.extract! review, :id, :content, :user_id, :url, :company_id, :rate, :created_at, :updated_at
json.url review_url(review, format: :json)
