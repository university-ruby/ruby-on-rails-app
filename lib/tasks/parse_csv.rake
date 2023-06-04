require 'csv'
require 'faker'
require 'date'

desc 'Parse CSV'
task parse_csv: :environment do
  path = File.join Rails.root, 'lib', 'assets'
  table = CSV.parse(File.read(path + "/hospitals.csv"), headers: true)

  table.each do |row|
    Clinic.create(
      title: row["Facility.Name"],
      address: Faker::Address.street_address,
      city: row["Facility.City"],
      clinic_type: row["Facility.Type"],
      rating_mortality: row["Rating.Mortality"],
      created_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
      updated_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)
    )
  end
end