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
    @existing_bookings = Booking.where(space_id: @space.id, renter_id: current_user.id)
    if !@existing_bookings.empty?
      @most_recent_booking = @existing_bookings.last
    end
  end

end