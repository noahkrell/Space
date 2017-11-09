class CreateSpaceRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :space_ratings do |t|
      t.integer :booking_id
      t.text :review
      t.decimal :stars

      t.timestamps
    end
  end
end
