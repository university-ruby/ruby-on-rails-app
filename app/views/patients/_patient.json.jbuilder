json.extract! patient, :id, :name, :surname, :birthday_date, :created_at, :updated_at
json.url patient_url(patient, format: :json)
