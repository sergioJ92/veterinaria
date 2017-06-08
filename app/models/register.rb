class Register < ApplicationRecord
  belongs_to :veterinary
  belongs_to :service
  belongs_to :pet
end
