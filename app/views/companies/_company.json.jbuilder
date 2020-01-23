json.extract! company, :id, :name, :address, :telephone_number, :mail_address, :open, :close, :emergency, :remarks, :created_at, :updated_at
json.url company_url(company, format: :json)
