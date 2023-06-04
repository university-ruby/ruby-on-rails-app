class AddCityToClinics < ActiveRecord::Migration[7.0]
  def change
    add_column :clinics, :city, :string
  end
end
