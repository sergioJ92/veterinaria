class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :name
      t.string :detail
      t.references :typeServices, foreign_key: true

      t.timestamps
    end
  end
end
