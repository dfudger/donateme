class AdminsController < ApplicationController

  def index
    @campaigns = Campaign.all
    @users = User.all
  end

end
