require 'csv'
require 'faker'
require 'date'

desc 'Parse CSV'
task parse_csv: :environment do
  path = File.join Rails.root, 'lib', 'assets'
  table = CSV.parse(File.read(path + "/hospitals.csv"), headers: true)

  groups = table.each_slice(2000).to_a
  threads = []

  groups.each do |g|
    threads << Thread.new(g) { |g|
      g.each do |row|
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
    }
  end

  threads.each { |thread| thread.join }
end

# desc 'Parse CSV'
# task parse_csv: :environment do
#   path = File.join Rails.root, 'lib', 'assets'
#   table = CSV.parse(File.read(path + "/hospitals.csv"), headers: true)
#
#   table.each do |row|
#     Clinic.create(
#       title: row["Facility.Name"],
#       address: Faker::Address.street_address,
#       city: row["Facility.City"],
#       clinic_type: row["Facility.Type"],
#       rating_mortality: row["Rating.Mortality"],
#       created_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
#       updated_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)
#     )
#   end
# end