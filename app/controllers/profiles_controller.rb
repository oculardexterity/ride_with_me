class ProfilesController < ApplicationController

	def show
		@user = User.find(params[:user_id])
		@profile = User.find(params[:user_id]).profile
	end
end
