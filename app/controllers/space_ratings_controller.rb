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


  # def create
  #   @space = SpaceRating.find_by(:api_id => params[:review][:movie_id].to_i)
  #   review_hash = {}
  #   review_hash[:description] = review_params[:description]
  #   review_hash[:spud_score] = params[:spud_score].to_i if params[:spud_score].to_i > 0
  #   review_hash[:movie_id] = @movie.id
  #   review_hash[:user_id] = current_user.id

  #   @review = SpaceRating.new(review_hash)
  #   if @review.save
  #     redirect_to "/spaces/#{@space.id}"
  #   else
  #     flash[:notice] = "You've already reviewed this booking."
  #     redirect_to "/spaces/#{@space.id}"
  #   end

  # end

  # private
  # def review_params
  #   params.require(:review).permit(:description, :spud_score, :movie_id)
  # end
end