class RegistrationController < ApplicationController
	after_action	:clear_expired_registrants
	before_action	:get_registrant

	def new
		@user = User.new
	end

	def create
		@user = User.new user_params
		@user.save

		redirect_to root_url
		flash[:notice] = "Registration Completed!"
	end
	
	private

	def clear_expired_registrants
		Registrant.destroy_all(:expires_at.lt => Time.now)
	end

	def get_registrant
		@registrant = Registrant.find_by_code params[:code]
		unless @registrant
			Registrant.where(expires_at.lt => Time.now)
			redirect_to login_url
			flash[:alert] = "Registration Link Expired"
		end
	end

	def user_params
		params.require(:user).permit(
			:first_name,
			:last_name,
			:email,
			:password,
			:password_confirmation,
			:birthday,
			:bio
		)
	end
end
