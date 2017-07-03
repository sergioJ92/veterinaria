class CreateLabs < ActiveRecord::Migration[5.1]
  def change
    create_table :labs do |t|
      t.references :pet, foreign_key: true
      t.string :name
      t.string :lab_type
      t.text :description

      t.timestamps
    end
  end
end
