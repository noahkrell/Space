class SpaceRating < ApplicationRecord
  belongs_to :booking

  def average_rating
  	ratings.sum(:stars) / ratings.size
  end

end
