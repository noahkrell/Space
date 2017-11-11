class Host::SpacesController < ApplicationController
  before_action :require_host

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.owner = current_user
    @space.country = "USA"
    if @space.save
      flash[:success] = "Space created!"
      redirect_to @space
    else
      render :new
    end
  end

  def edit
    @space = Space.find(params[:space])
  end

  def update
    p params
    @space = Space.find(params[:id])
    if @space.update_attributes(space_params)
      flash[:success] = "Your changes have been updated!"
      redirect_to @space
    else
      render 'edit'
    end
  end

  def destroy
    @user = current_user
    Space.find(params[:id]).destroy
    flash[:success] = "space deleted"
    redirect_to @user
  end

  private

  def space_params
    params.require(:space).permit(:title, :description, :price, :rules, :location, :city, :state, :country)
  end

  def require_host
    unless current_user.host?
      redirect_to root_path
    end
  end

  def correct_host
    @user = (Space.find(params[:id])).owner
    redirect_to root_path unless @user == current_user
  end
end
