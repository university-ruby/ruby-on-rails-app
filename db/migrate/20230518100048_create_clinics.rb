class CreateClinics < ActiveRecord::Migration[7.0]
  def change
    create_table :clinics do |t|
      t.string :title
      t.string :address

      t.timestamps
    end
  end
end
