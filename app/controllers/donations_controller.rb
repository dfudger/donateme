class DonationsController < ApplicationController
  def new
  	@campaign = Campaign.find(params[:campaign_id])
    @donation = Donation.new
  end

  def create
  	@campaign = Campaign.find(params[:campaign_id])
    @donation = Donation.new(params[:donation].permit(:amount))
    @donation.campaign = @campaign
    @donation.user = current_user
    @donation.save
    flash[:notice] = "Donation successfully created"
    redirect_to admins_path
  end
end
