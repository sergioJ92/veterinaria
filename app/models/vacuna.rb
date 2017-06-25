class Vacuna < ApplicationRecord
	has_many :pet_has_vacunas
	has_many :pets
end
