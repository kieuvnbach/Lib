json.extract! member, :id, :name, :email, :phone, :address, :membership_date, :membership_type, :created_at, :updated_at
json.url member_url(member, format: :json)
