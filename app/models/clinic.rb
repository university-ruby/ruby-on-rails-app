class Clinic < ApplicationRecord
  has_many_attached :pictures

  def self.to_csv
    attributes = %w{ id title address patients}
    CSV.generate(headers: true) do |csv|
      csv << attributes
      all.each do |clinic|
        csv << attributes.map{ |attr| clinic.send(attr) }
      end
    end
  end

  def patients
    patients_list = Array.new
    patient_cards = PatientCard.where(clinic_id: self.id)
    patient_cards.each do |patient_card|
      patients_list.push(patient_card.patient.name + " " + patient_card.patient.surname)
    end
    if patients_list.empty?
      patients_list.push("No patients")
    end
    return patients_list
  end
end
