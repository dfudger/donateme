class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user].permit(:type, :name, :city, :school))
    @user.save
    redirect_to root_url
  end

  def update
    @user = User.find(params[:id])

    if @user.update(params[:user].permit(:group, :name, :city, :school))
    @user.save
      redirect_to root_url
    else
      render 'edit'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to root_url
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

end
