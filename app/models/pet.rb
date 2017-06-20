class Pet < ApplicationRecord
  belongs_to :client
  has_many :internships
  has_many :registers

  def dischargeDate
  	date = Time.now.to_date
  	if self.internships.size > 0
  		date = self.internships.last.dischargeDate
  	end
  	date
  end
end
