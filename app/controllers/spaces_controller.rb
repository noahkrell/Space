class SpacesController < ApplicationController

  def index
    if params[:search] == nil
      @spaces = Space.all
      @map_markers = Space.near(request.location)
    else
      @spaces = Space.search_by_address(params[:search])
      @map_markers = Space.near(params[:search])
    end
  end

  def show
    @space = Space.find(params[:id])
    @bookings = Booking.where(space_id: @space.id)
  end

end