class VideosController < ApplicationController
  def new
    @campaign = Campaign.find(params[:campaign_id])
    @video = Video.new
  end

  def create
    @campaign = Campaign.find(params[:campaign_id])
    @video = Video.new(params[:video].permit(:url))
    @video.campaign = @campaign
    @video.save
    redirect_to root_url
  end

  def edit
    @campaign = Campaign.find(params[:campaign_id])
    @video = Video.find(params[:id])
  end

  def update
    @campaign = Campaign.find(params[:campaign_id])
    @video = Video.find(params[:id])

    if @video.update(params[:video].permit(:url))
      redirect_to root_url
    else
      render 'edit'
    end
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy

    redirect_to root_url
  end
end
