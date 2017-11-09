class Booking < ApplicationRecord
  belongs_to :renter, class_name: 'User'
  belongs_to :space
  has_one :renter_rating
  has_one :space_rating
end
