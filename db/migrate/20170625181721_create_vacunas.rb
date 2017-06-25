class CreateVacunas < ActiveRecord::Migration[5.1]
  def change
    create_table :vacunas do |t|
      t.string :name
      t.text :detail

      t.timestamps
    end
  end
end
