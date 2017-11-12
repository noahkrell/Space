class BookingsController < ApplicationController

  def index
  end

  def new
  end

  def create
    start_time = params[:booking][:date] + " #{params[:booking][:start_time]}"
    start_time_obj = Time.parse(start_time)
    end_time = params[:booking][:date] + " #{params[:booking][:end_time]}"
    end_time_obj = Time.parse(end_time)
    Booking.create(space_id: params[:id].to_i, renter_id: current_user.id, start_time: start_time_obj, end_time: end_time_obj)
    binding.pry
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def booking_params
    # params.require(:booking).permit(:)
  end

end