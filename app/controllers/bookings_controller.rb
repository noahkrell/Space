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
    if !current_user
      respond_to do |format|
        format.json { render json: {alert: "You must be logged in to book!"}}
      end
    else
      @booking = Booking.new(space_id: params[:id].to_i, renter_id: current_user.id, start_time: start_time_obj, end_time: end_time_obj)
      respond_to do |format|
        format.json { render json: {alert: "Thanks for booking, #{current_user.first_name}!", booking: @booking}}
      end
    end
    
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