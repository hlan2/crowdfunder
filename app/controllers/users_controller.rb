class UsersController < ApplicationController

	def index
		#@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to projects_path, notice: "Signed up!"
		else
			render :new
		end
	end

	def show 
		# @user = User.find(params[:id])
		# @pledge = @users.pledges.build
	end

	private
	def user_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation)
	end
end
