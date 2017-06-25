class AdminController < ApplicationController
	#role 2 is veterinary
	def convert
		if params['id']
			user = User.find(params['id'])
			user.role_id = Role.where(name: 'veterinario')
			.select(:id).first.id
			user.save
		end
		@users = User.all
	end

	def convert_almacen
		if params['id']
			user = User.find(params['id'])
			user.role_id = Role.where(name: 'almacenero')
			.select(:id).first.id
			user.save
		end
		@users = User.all
		redirect_to "/admin/users"
	end
end
