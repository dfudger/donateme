class WelcomeController < ApplicationController
	# before_action :authenticate_user!

	def index
		@popular = Campaign.last(5)
	end
end
