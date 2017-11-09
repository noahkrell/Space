class User < ApplicationRecord
  has_many :spaces, foreign_key: :owner_id
  has_many :bookings, foreign_key: :renter_id
end
