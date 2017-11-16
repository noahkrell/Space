class Booking < ApplicationRecord
  belongs_to :renter, class_name: 'User'
  belongs_to :space
  has_one :renter_rating
  has_one :space_rating

  # booking datetimes are stored in UTC timezone in db
  # start_time and end_time are attr_reader methods that convert UTC to CT, so that every time we call it in the code it converts
  # def start_time
  #   self[:start_time].in_time_zone('US/Central')
  # end

  # def end_time
  #   self[:end_time].in_time_zone('US/Central')
  # end


end
