class WelcomeController < ApplicationController
	def index
		@popular = Campaign.all()
		@featured = Campaign.first()
	end
end
