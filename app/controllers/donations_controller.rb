class DonationsController < ApplicationController
  def new
  	@donation = Donation.new
  end

  def create
  	@donation = Donation.new(params[:donation].permit(:amount))
    @donation.save
    redirect_to root_url
  end
end
