class InfoDocumentationController < ApplicationController
  def index

  end

  def csv
    send_data Clinic.to_csv, filename: "clinics-#{Date.today}.csv"
  end

  def pdf
    @clinics = Clinic.all
    pdf = Prawn::Document.new
    pdf.text "Clinics"
    pdf.table([["Tile", "Address", "Patients"]] + @clinics.map { |clinic| [clinic.title, clinic.address, clinic.patients.to_s] })
    send_data pdf.render, filename: "clinics-#{Date.today}.pdf", type: "application/pdf", disposition: "inline"
  end

  def pdf_by_clinic_id
    @clinic_id = params[:clinic_id]
    @clinic = Clinic.find(@clinic_id)
    pdf = Prawn::Document.new
    pdf.fill_color "0000ff"
    pdf.text "Clinic"
    pdf.table([["Tile", "Address", "Patients"]] + [[@clinic.title, @clinic.address, @clinic.patients.to_s]])
    send_data pdf.render, filename: "clinics-#{Date.today}.pdf", type: "application/pdf", disposition: "inline"
  end

  def pdf_by_patient_id
    @patient_id = params[:patient_id]
    @patient = Patient.find(@patient_id)
    pdf = Prawn::Document.new
    pdf.fill_color "0000ff"
    pdf.text "Patient"
    pdf.table([["Name", "Surname", "Birthday date"]] + [[@patient.name, @patient.surname, @patient.birthday_date.to_s]])
    send_data pdf.render, filename: "patient-#{Date.today}.pdf", type: "application/pdf", disposition: "inline"
  end
end