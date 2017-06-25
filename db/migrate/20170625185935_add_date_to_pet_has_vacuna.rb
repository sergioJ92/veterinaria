class AddDateToPetHasVacuna < ActiveRecord::Migration[5.1]
  def change
    add_column :pet_has_vacunas, :datevacuna, :date
  end
end
