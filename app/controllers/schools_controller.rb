class SchoolsController < ApplicationController
  before_filter :authenticate_admin!

  def new
    @school = School.new
  end

  def create
    @school = School.new(params[:school].permit(:name))
    if @school.save
      redirect_to admins_path
    else
      render "new"
    end
  end

  def edit
    @school = School.find(params[:id])
  end

  def update
    @school = School.find(params[:id])

    if @school.update(params[:school].permit(:name))
      redirect_to admins_path
    else
      render 'edit'
    end
  end

  def destroy
    @school = School.find(params[:id])
    @school.destroy

    redirect_to admins_path
  end
end
