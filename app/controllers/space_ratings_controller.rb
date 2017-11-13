class SpaceRatingsController < ApplicationController

  include SessionsHelper

  def new
  end

  def update
    @rating = SpaceRating.find(params[:id])
    @comment = @rating.review
    if @rating.update_attributes(stars: params[:stars])
      respond_to do |format|
        format.js
      end
    end
  end


  def create
    @space = Space.find(params[:space_ratings][:space_id].to_i)
    space_rating_hash = {}
    space_rating_hash[:comment] = space_rating_params[:comment]
    space_rating_hash[:score] = params[:score].to_i if params[:score].to_i > 0
    space_rating_hash[:booking_id] = 1

    @review = SpaceRating.new(space_rating_hash)
    binding.pry
    if @review.save
      redirect_to "/spaces/#{@space.id}"
    else
      flash[:notice] = "You've already reviewed this booking."
      redirect_to "/spaces/#{@space.id}"
    end

  end

  private
  def space_rating_params
    params.require(:space_ratings).permit(:comment, :score)
  end
end