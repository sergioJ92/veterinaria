class CreateInternships < ActiveRecord::Migration[5.1]
  def change
    create_table :internships do |t|
      t.date :intership_date
      t.date :dischargeDate
      t.string :deail
      t.references :pet, foreign_key: true

      t.timestamps
    end
  end
end
