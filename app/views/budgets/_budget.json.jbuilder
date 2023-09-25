json.extract! budget, :id, :account_id, :period_id, :organisation_id, :amount, :remarks, :created_at, :updated_at
json.url budget_url(budget, format: :json)
