class PetHasVacuna < ApplicationRecord
  belongs_to :vacuna
  belongs_to :pet
end
