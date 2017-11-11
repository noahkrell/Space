class SpacesController < ApplicationController

  def index
    if params[:search] == nil
      @spaces = Space.all
    else
      @spaces = Space.search_by_address(params[:search])
    end
  end

  def show
    @space = Space.find(params[:id])
    # @comment
  end

end