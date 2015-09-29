class ProjectsController < ApplicationController

	def index
		@projects = Project.order(end_at: :desc)
	end

	def new
		@project = Project.new
		3.times { @project.rewards.build }
	end

	def show
		@project = Project.find(params[:id])

	end

	def create
		@project = Project.new(project_params)
		@project.user = current_user
		if @project.save
			redirect_to projects_path
		else
		render :new
		end
	end

	private
		def project_params
			params.require(:project).permit(:name, :description, :end_at, :start_at, :funding_goal, rewards_attributes: [:description, :backer_limit])
		end

end
