require 'nokogiri'
require 'open-uri'
require 'faker'
require 'date'

desc 'Parse Website'
task parse_website: :environment do
  connection = ActiveRecord::Base.connection
  # Fetch and parse HTML document
  doc = Nokogiri::HTML(URI.open('https://www.hospitalsafetygrade.org/all-hospitals'))

  list_items = doc.xpath("//div[@id='BlinkDBContent_849210']/ul/li/a")
  clinic_list = Array.new
  list_items.each do |li|
    clinic_list.append(li.content)
  end
  puts clinic_list

  clinic_list.each do |c|
    Clinic.create(
      title: c,
      address: Faker::Address.street_address,
      created_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
      updated_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)
    )
  end
end