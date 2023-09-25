json.extract! member, :id, :salutation, :first_name, :last_name, :birtday, :email, :phone, :mobile, :start_date, :end_date, :organisation_id, :created_at, :updated_at
json.url member_url(member, format: :json)
