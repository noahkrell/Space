class SpacesController < ApplicationController

  def index
    if params[:search] == nil
      @spaces = Space.all
      @map_markers = Space.near(request.location)
      binding.pry
    else
      @spaces = Space.search_by_address(params[:search])
      @map_markers = Space.near(params[:search])
      # binding.pry
    end
  end

  def show
    @space = Space.find(params[:id])
    # @bookings = Booking.find_by(space_id: @space.id)
    @bookings = Booking.all
    # binding.pry
  end

end