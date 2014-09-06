class RegistrationsController < Devise::RegistrationsController
	
	def sign_up(resource_name, resource)
		if resource_name.to_s.camelcase.constantize.count == 1
			resource.update_attribute(:is_admin, true)
		end
		super
	end
	
end
