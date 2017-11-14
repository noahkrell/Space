class Space < ApplicationRecord
  has_many :bookings
  has_many :space_amenities
  has_many :amenities, through: :space_amenities
  has_many :space_ratings, through: :bookings
  belongs_to :owner, class_name: 'User'
	has_attached_file :space_image, styles: {
	thumb: '100x100>',
	square: '200x200#',
	medium: '300x300>',
  large: '600x600>'
	}
  validates :title, :description, :price, :rules, :location, :city, :country, presence: true
  validates_attachment_content_type :space_image, :content_type => /\Aimage\/.*\Z/

  geocoded_by :location   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates



  include PgSearch

  pg_search_scope :search_by_address, :against => [:city, :state, :country]

  def average_rating
    bottom = self.space_ratings.size.to_f
    top = self.space_ratings.sum(:score).to_f
    average = top/bottom
    return average
  end
end