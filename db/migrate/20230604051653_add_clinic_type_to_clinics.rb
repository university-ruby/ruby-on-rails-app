class AddClinicTypeToClinics < ActiveRecord::Migration[7.0]
  def change
    add_column :clinics, :clinic_type, :string
  end
end
