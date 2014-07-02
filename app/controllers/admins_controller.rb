class AdminsController < ApplicationController
  before_filter :authenticate_admin!

  def index
    @campaigns = Campaign.all
    @users = User.all
    @schools = School.all
  end

end
