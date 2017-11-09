class CreateRenterRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :renter_ratings do |t|
      t.integer :booking_id
      t.text :review
      t.decimal :stars

      t.timestamps
    end
  end
end
