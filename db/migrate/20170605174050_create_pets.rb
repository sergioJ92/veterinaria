class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :ci
      t.string :name
      t.string :gender
      t.string :race
      t.date :bornDate
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
