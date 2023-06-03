require 'faker'
require 'date'

connection = ActiveRecord::Base.connection

Clinic.delete_all
Department.delete_all
Doctor.delete_all
Patient.delete_all
PatientCard.delete_all
Specialization.delete_all
User.delete_all

100.times do
  # Clinic.create(
  #   title: Faker::Company.name,
  #   address: Faker::Address.street_address,
  #   created_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
  #   updated_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)
  # )
  connection.execute(
    "INSERT INTO clinics (title, address, created_at, updated_at) VALUES (\"#{Faker::Company.name}\", \"#{Faker::Address.street_address}\", \"#{Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)}\", \"#{Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)}\")"
  )
end

100.times do
  Department.create(
    title: Faker::Company.department,
    clinic_id: Faker::Number.between(from: 0, to: Clinic.all.size),
    created_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
    updated_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)
  )
end

100.times do
  # Specialization.create(
  #   title: Faker::Job.title,
  #   created_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
  #   updated_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)
  # )
  connection.execute(
    "INSERT INTO specializations (title, created_at, updated_at) VALUES (\"#{Faker::Company.name}\", \"#{Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)}\", \"#{Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)}\")"
  )
end

100.times do
  Doctor.create(
    name: Faker::Name.first_name,
    surname: Faker::Name.last_name,
    birthday_date: Faker::Time.between(from: DateTime.now - 10, to: DateTime.now - 5),
    department_id: Faker::Number.between(from: 0, to: Department.all.size),
    specialization_id: Faker::Number.between(from: 0, to: Specialization.all.size),
    created_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
    updated_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)
  )
end


100.times do
  # Patient.create(
  #   name: Faker::Name.first_name,
  #   surname: Faker::Name.last_name,
  #   birthday_date: Faker::Time.between(from: DateTime.now - 10, to: DateTime.now - 5),
  #   created_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
  #   updated_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)
  # )
  connection.execute(
    "INSERT INTO patients (name, surname, birthday_date, created_at, updated_at) VALUES (\"#{Faker::Name.first_name}\", \"#{Faker::Name.last_name}\", \"#{Faker::Time.between(from: DateTime.now - 10, to: DateTime.now - 5)}\", \"#{Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)}\", \"#{Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)}\")"
  )
end

100.times do
  PatientCard.create(
    doctor_comment: Faker::JapaneseMedia::OnePiece.quote,
    clinic_id: Faker::Number.between(from: 0, to: Clinic.all.size),
    patient_id: Faker::Number.between(from: 0, to: Patient.all.size),
    created_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
    updated_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)
  )
end