class CreateVeterinaries < ActiveRecord::Migration[5.1]
  def change
    create_table :veterinaries do |t|
      t.string :name

      t.timestamps
    end
  end
end
