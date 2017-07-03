class Lab < ApplicationRecord
  belongs_to :pet
	has_attached_file :imagen
  validates_attachment_content_type :imagen, content_type: /\Aimage\/.*\z/
end
