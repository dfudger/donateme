class WelcomeController < ApplicationController
	# before_action :authenticate_user!

	def index
		@popular = Campaign.last(5)
		@featured = Campaign.last(1)
	end

	def about
	end
end
