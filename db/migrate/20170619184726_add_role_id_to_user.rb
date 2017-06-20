class AddRoleIdToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :role, foreign_key: true
    add_column :users, :data_id, :integer
  end
end
