class AddAttachmentImageToPets < ActiveRecord::Migration[5.1]
  def self.up
    change_table :pets do |t|
      t.attachment :imagen
    end
  end

  def self.down
    remove_attachment :pets, :imagen
  end
end