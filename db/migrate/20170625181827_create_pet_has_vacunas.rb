class CreatePetHasVacunas < ActiveRecord::Migration[5.1]
  def change
    create_table :pet_has_vacunas do |t|
      t.references :vacuna, foreign_key: true
      t.references :pet, foreign_key: true

      t.timestamps
    end
  end
end
