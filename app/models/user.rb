class User < ApplicationRecord
  has_many :spaces, foreign_key: :owner_id
  has_many :bookings, foreign_key: :renter_id

  before_save { self.email = email.downcase }
  validates :first_name, :last_name, :birthday, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
