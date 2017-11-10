class SpacesController < ApplicationController

  def index
    if params[:search].empty?
      @spaces = Space.all
    else
      @spaces = Space.search_by_address(params[:search])
    end
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