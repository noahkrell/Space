class SpacesController < ApplicationController

  before_action :set_search

  def set_search
    @search = Space.search(params[:q])
    if session[:current_search]
      if params[:search]
        session[:current_search] = params[:search]
      else
        session[:current_search] = params[:q][:location_cont]
      end
    end
  end

  def index
    @search_term = params[:search]
    session[:current_search] = @search_term
      if params[:search].empty?
        @spaces = Space.all
        @map_markers = Space.near("Austin, TX")
      else
        @spaces = Space.search_by_address(params[:search])
        if @spaces.empty?
          flash[:danger] = "We're sorry, there are currently no spaces in that area. Please log in to add yours!"
          redirect_to root_path
        else
          @map_markers = Space.search_by_address(params[:search])
        end
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