class PledgesController < ApplicationController
	def new
		@pledge = Pledge.new
	end

	def create
		@reward = Reward.find(params[:reward_id])
		@pledge = @reward.pledges.build
		@pledge.user = current_user
		if @pledge.save
			redirect_to projects_path
		else
			render "/projects/show"
		end
	end

end
