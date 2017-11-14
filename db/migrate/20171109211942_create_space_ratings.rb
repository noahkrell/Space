class CreateSpaceRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :space_ratings do |t|
      t.integer :booking_id
      t.text :comment
      t.decimal :score

      t.timestamps
    end
  end
end
