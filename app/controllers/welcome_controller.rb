class WelcomeController < ApplicationController
	# before_action :authenticate_user!
	helper CampaignsHelper

	def index
		@popular = Campaign.last(5)
		@featured = Campaign.first()
	end

	def about
	end
end
