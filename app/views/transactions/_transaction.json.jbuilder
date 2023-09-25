json.extract! transaction, :id, :transaction_date, :transaction_number, :transaction_amount, :description, :account_id, :organisation_id, :transaction_text, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
