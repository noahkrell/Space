class Addspaceimagetospaces < ActiveRecord::Migration[5.1]
  def change
  	add_attachment :spaces, :space_image
  end
end
