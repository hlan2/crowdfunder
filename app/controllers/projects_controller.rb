class ProjectsController < ApplicationController

	def index
		@projects = Project.order(end_at: :desc)
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)

		if @project.save
			redirect_to projects_path
		else
		render :new
		end
	end

	private
		def project_params
			params.require(:project).permit(:name, :description, :end_at, :start_at, :funding_goal)
		end

end
