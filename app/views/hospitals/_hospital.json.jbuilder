json.extract! hospital, :id, :name, :address, :telephone_number, :mail_address, :holiday, :open, :close, :emergency, :remarks, :created_at, :updated_at
json.url hospital_url(hospital, format: :json)
