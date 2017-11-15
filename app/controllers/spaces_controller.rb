class SpacesController < ApplicationController

  before_action :set_search

  def set_search
    @search = Space.search(params[:q])
  end

  def index
      if params[:search].empty?
        @spaces = Space.all
        @map_markers = Space.near("Austin, TX")
      else
        @spaces = Space.search_by_address(params[:search])
        @map_markers = Space.search_by_address(params[:search])
      end
  end

  def filter
    @spaces = @search.result
    @map_markers = Space.markers_of(@spaces)
    render :index
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