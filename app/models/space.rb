class Space < ApplicationRecord
  has_many :bookings
  has_many :space_amenities
  has_many :amenities, through: :space_amenities
  has_many :space_ratings, through: :bookings
  belongs_to :owner, class_name: 'User'
  
  validates :title, :description, :price, :rules, :location, :city, :state, :country, presence: true
  geocoded_by :location   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates


  include PgSearch

  pg_search_scope :search_by_address, :against => [:city, :state, :country]
end
