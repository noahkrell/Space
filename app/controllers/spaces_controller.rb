class SpacesController < ApplicationController

  def index
    @spaces = Space.all
  end

  def new
  end

  def create
  end

  def show
    @space = Space.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

end