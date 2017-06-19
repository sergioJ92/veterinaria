class Service < ApplicationRecord
  belongs_to :typeServices
  has_many :registers
end
