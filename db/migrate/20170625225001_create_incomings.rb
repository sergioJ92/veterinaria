class CreateIncomings < ActiveRecord::Migration[5.1]
  def change
    create_table :incomings do |t|
      t.text :details
      t.date :date
      t.float :ammount

      t.timestamps
    end
  end
end
