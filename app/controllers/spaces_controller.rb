class SpacesController < ApplicationController

  def index
    if params[:search] == nil
      @spaces = Space.all
    else
      @spaces = Space.search_by_address(params[:search])
      @map_markers = Space.near(params[:search])
      # binding.pry
    end
  end

  def show
    @space = Space.find(params[:id])
  end

end