class WelcomeController < ApplicationController
	before_action :authenticate_user!

	def index
		render inline: "Hello!"
	end
end
