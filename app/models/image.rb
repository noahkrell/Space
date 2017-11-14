class Image < ApplicationRecord
  belongs_to :space
	has_attached_file :space_image, styles: {
	thumb: '100x100>',
	square: '200x200#',
	medium: '300x300>',
	large: '600x600>'
	}
    validates_attachment_content_type :space_image, :content_type => /\Aimage\/.*\Z/

end
