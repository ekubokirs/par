class ProjectController < ApplicationController

	def index
		@projects = Project.all
	end

	def user_index
		@projects = Project.current_user.all
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new project_params
		@project.save

		#might want to change path (ALTER)
		redirect_to root_url
		flash[:notice] = "Project Saved"
	end

	def show
		@project = Project.find_by(params[:id])
	end

	def edit
		@project = Project.find_by(params[:id])
	end

	def update
		@project = Project.find_by(params[:id])
		@project.update_attributes(project_params)

		#might want to change path later (ALTER)
		redirect_to root_url
		flash[:notice] = "Project Updated"
	end

	def destroy
		project = Project.find_by(params[:id])
		project.destroy

		# might want to change path later (ALTER)
		redirect_to root_url
		flash[:notice] = "Project Deleted"
	end

	private

	def project_params
		params.require(:project).permit(
			:supply,
			:direction,
			:prep_time,
			:total_time,
			:links,
			:project_title)
	end

end
