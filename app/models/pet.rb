class Pet < ApplicationRecord
  belongs_to :client
  has_many :internships
  has_many :registers
  has_many :vacunas 

  has_attached_file :imagen
  validates_attachment_content_type :imagen, content_type: /\Aimage\/.*\z/
  def dischargeDate
  	date = Time.now.to_date
  	if self.internships.size > 0
  		date = self.internships.last.dischargeDate
  	end
  	date
  end
end
