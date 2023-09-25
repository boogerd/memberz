json.extract! invoice, :id, :invoice_number, :invoice_date, :due_date, :member_id, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
