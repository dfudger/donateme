class ImagesController < ApplicationController
  before_filter :authenticate_admin!

  def new
    @campaign = Campaign.find(params[:campaign_id])
    @image = Image.new
  end

  def create
    @campaign = Campaign.find(params[:campaign_id])
    @image = Image.new(params[:image].permit(:url))
    @image.campaign = @campaign
    @image.save
    redirect_to admins_path
  end

  def edit
    @campaign = Campaign.find(params[:campaign_id])
    @image = Image.find(params[:id])
  end

  def update
    @campaign = Campaign.find(params[:campaign_id])
    @image = Image.find(params[:id])

    if @image.update(params[:image].permit(:url))
      redirect_to admins_path
    else
      render 'edit'
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy

    redirect_to admins_path
  end
end
