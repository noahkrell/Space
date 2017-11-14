class SpacesController < ApplicationController

  def index
    # binding.pry
    if params[:search].empty?
      @spaces = Space.all
      @map_markers = Space.near("Austin, TX")
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