class Booking < ApplicationRecord
  belongs_to :renter, class_name: 'User'
  belongs_to :space
  has_one :renter_rating
  has_one :space_rating

  def start_time
    self[:start_time].in_time_zone('US/Central')
  end

  def end_time
    self[:end_time].in_time_zone('US/Central')
  end


end
