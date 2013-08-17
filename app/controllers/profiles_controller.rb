class ProfilesController < ApplicationController

	def show
		@user = User.find_by(:user_id)
	end
end
