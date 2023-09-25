json.extract! account, :id, :number, :description, :account_type, :status, :organisation_id, :created_at, :updated_at
json.url account_url(account, format: :json)
