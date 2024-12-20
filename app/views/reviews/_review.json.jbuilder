json.extract! review, :id, :book_id, :member_id, :comment, :review_date, :created_at, :updated_at
json.url review_url(review, format: :json)
