json.extract! membership, :id, :member_id, :membership_type_id, :start_date, :end_date, :renewal_date, :description, :status, :created_at, :updated_at
json.url membership_url(membership, format: :json)
