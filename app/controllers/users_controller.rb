class UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
		@events = User.find(params[:id]).events.all
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		@user.update_attributes(user_params)

		redirect_to root_url
		flash[:notice] = "User Information Changed"
	end

	private

	def user_params
		params.require(:user).permit(
			:first_name,
			:last_name,
			:email,
			:birthday,
			:bio
		)
	end
end
