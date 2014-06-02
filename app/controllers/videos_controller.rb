class VideosController < ApplicationController
  def new
    @video = Video.new
  end

  def create
    @video = Video.new(params[:video].permit(:url))
    @video.save
    redirect_to root_url
  end

  def edit
    @video = Video.find(params[:id])
  end

  def update
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
