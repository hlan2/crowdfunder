class ProjectsController < ApplicationController

	def index
		@projects = Project.order(end_at: :desc)
	end

	def new
		@project = Project.new
	end
end
