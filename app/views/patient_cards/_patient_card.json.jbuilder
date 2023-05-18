json.extract! patient_card, :id, :doctor_comment, :clinic_id, :patient_id, :created_at, :updated_at
json.url patient_card_url(patient_card, format: :json)
