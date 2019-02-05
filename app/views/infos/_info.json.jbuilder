json.extract! info, :id, :First_name, :Last_name, :email, :Address, :gender, :Age, :PhoneNumber, :created_at, :updated_at
json.url info_url(info, format: :json)
