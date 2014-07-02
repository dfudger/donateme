class ImagesController < ApplicationController
  def new
    @campaign = Campaign.find(params[:campaign_id])
    @image = Image.new
  end

  def create
    @campaign = Campaign.find(params[:campaign_id])
    @image = Image.new(params[:image].permit(:url))
    @image.campaign = @campaign
    @image.save
    redirect_to root_url
  end

  def edit
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])

    if @image.update(params[:image].permit(:url))
      redirect_to root_url
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
