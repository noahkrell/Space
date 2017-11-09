# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


20.times do
  User.create(first_name: Faker::Name.first_name,
              last_name: Faker::Name.first_name,
              password_digest: "password",
              email: Faker::Internet.email,
              host: [true, false].sample,
              birthday: Faker::Date.birthday(18, 100),
              phone_number: Faker::PhoneNumber.phone_number)
end
user_array = User.all


10.times do
  Space.create(title: Faker::Address.community,
              description: Faker::Lorem.paragraph,
              price: Faker::Number.between(10, 100),
              rules: Faker::Lorem.sentence,
              location: Faker::Address.street_address,
              owner: user_array.sample)
end
space_array = Space.all

5.times do
  Booking.create(space: space_array.sample,
                renter: user_array.sample,
                start_time: Faker::Time.between(DateTime.now - 1.minute, DateTime.now, :morning),
                end_time: Faker::Time.between(DateTime.now - 1.minute, DateTime.now, :afternoon))
end
booking_array = Booking.all

5.times do
  RenterRating.create(booking: booking_array.sample,
                      review: Faker::Lorem.paragraph,
                      stars: [1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5].sample)
end

5.times do
  SpaceRating.create(booking: booking_array.sample,
                      review: Faker::Lorem.paragraph,
                      stars: [1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5].sample)
end


amenities = ["Wifi", "Coffee", "Restrooms", "Seating", "Outlets", "Fridge", "Parking", "Tables"]
amenities.each do |amenity|
  Amenity.create(name: amenity)
end
amenity_array = Amenity.all

10.times do
  SpaceAmenity.create(space: space_array.sample,
                      amenity: amenity_array.sample)
end