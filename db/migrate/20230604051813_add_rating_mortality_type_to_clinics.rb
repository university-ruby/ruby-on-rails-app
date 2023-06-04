class AddRatingMortalityTypeToClinics < ActiveRecord::Migration[7.0]
  def change
    add_column :clinics, :rating_mortality, :string
  end
end
