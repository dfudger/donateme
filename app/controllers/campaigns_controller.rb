class CampaignsController < ApplicationController
  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = Campaign.new(params[:campaign].permit(:goal, :start, :end, :gpa, :title, :body))
    @campaign.user = current_user
    @campaign.save
    redirect_to root_url
  end

  def update
    @campaign = Campaign.find(params[:id])

    if @campaign.update(params[:campaign].permit(:goal, :start, :end, :gpa, :title, :body))
    @campaign.save
      redirect_to root_url
    else
      render 'edit'
    end
  end

  def edit
    @campaign = Campaign.find(params[:id])
  end

  def destroy
    @campaign = Campaign.find(params[:id])
    @campaign.destroy

    redirect_to root_url
  end

  def index
    @campaigns = Campaign.all
  end

  def show
    @campaign = Campaign.find(params[:id])
    @videos = @campaign.videos
  end
end
