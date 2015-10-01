class ProjectsController < ApplicationController

	def index

		if params[:tag]
			@projects = Project.tagged_with(params[:tag])
		else
			@projects = Project.order(end_at: :desc)
		end

	end

	def new
		@project = Project.new
		@categories = Category.all
		3.times { @project.rewards.build }
	end

	def show
		@project = Project.find(params[:id])
		@pledge = Pledge.new
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

	def destroy
		@project = Project.find(params[:id])
		@project.destroy
	end

	private
		def project_params
			params.require(:project).permit(:name, :description, :end_at, :start_at, :funding_goal, rewards_attributes: [:description, :backer_limit], category_ids => [], :all_tags => [])
		end

end
