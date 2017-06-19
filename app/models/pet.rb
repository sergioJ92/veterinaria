class Pet < ApplicationRecord
  belongs_to :client
  has_many :internships
  has_many :registers
end
