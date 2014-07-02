class SchoolsController < ApplicationController
  def new
    @school = School.new
  end

  def create
    @school = School.new(params[:school].permit(:name))
    @school.save
    redirect_to root_url
  end

  def edit
    @school = School.find(params[:id])
  end

  def update
    @school = School.find(params[:id])

    if @school.update(params[:school].permit(:name))
      redirect_to root_url
    else
      render 'edit'
    end
  end

  def destroy
    @school = School.find(params[:id])
    @school.destroy

    redirect_to root_url
  end
end
