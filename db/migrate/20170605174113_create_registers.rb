class CreateRegisters < ActiveRecord::Migration[5.1]
  def change
    create_table :registers do |t|
      t.date :registerDate
      t.references :veterinary, foreign_key: true
      t.references :service, foreign_key: true
      t.references :pet, foreign_key: true

      t.timestamps
    end
  end
end
