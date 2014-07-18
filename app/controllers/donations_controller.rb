class DonationsController < ApplicationController
  before_filter :authenticate_user!

  def new
  	@campaign = Campaign.find(params[:campaign_id])
    @donation = Donation.new
  end

  def create
  	@campaign = Campaign.find(params[:campaign_id])
    @donation = Donation.new(params[:donation].permit(:amount))
    @donation.amount = @donation.amount*100
    @donation.campaign = @campaign
    @donation.user = current_user

    customer = Stripe::Customer.create(
      :email => current_user.email,
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @donation.amount,
      :description => 'Donation #'+@donation.id.to_s,
      :currency    => 'usd'
    )

    @donation.save

    flash[:notice] = "Thank you for supporting education!"
    redirect_to campaign_path(@campaign)

  rescue Stripe::CardError => e
    @donation.destroy

    flash[:error] = e.message
    redirect_to campaign_path(@campaign)
  end
end
