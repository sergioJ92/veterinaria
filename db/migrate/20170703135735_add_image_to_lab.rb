class AddImageToLab < ActiveRecord::Migration[5.1]
def self.up
    change_table :labs do |t|
      t.attachment :imagen
    end
  end

  def self.down
    remove_attachment :labs, :imagen
  end
end


