class CampaignsController < ApplicationController
  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = Campaign.new(params[:campaign].permit(:goal, :start, :end, :gpa, :body, :school_id))
    @campaign.user = current_user
    @campaign.title = current_user.name
    @campaign.save
    redirect_to admins_path
  end

  def update
    @campaign = Campaign.find(params[:id])

    if @campaign.update(params[:campaign].permit(:goal, :start, :end, :gpa, :body, :school_id))
    @campaign.save
      redirect_to admins_path
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

    redirect_to admins_path
  end

  def index
    @campaigns = Campaign.all
  end

  def show
    @campaign = Campaign.find(params[:id])
    @videos = @campaign.videos
  end
end
