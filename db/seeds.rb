20.times do
  User.create!(first_name: Faker::Name.first_name,
              last_name: Faker::Name.first_name,
              password: "password",
              password_confirmation: "password",
              email: Faker::Internet.email,
              host: true,
              birthday: Faker::Date.birthday(18, 100),
              phone_number: Faker::PhoneNumber.phone_number)
end
user_array = User.all

Space.create!(title: "DevBootcamp Campus",
              description: "Previously used as a web development school, this space provides everything you need to get your work done. Full connectivity to multiple TV's and a projector, wifi enabled, a mirage of desk space, chairs, white boards, computers, with a fully functional kitchen and yoga studio.",
              price: 50,
              rules: "Camping rules apply, please take out whatever trash you may bring in.",
              location: "1705 Guadalupe St, Austin, TX 78701",
              city: "Austin",
              state: "TX",
              country: "USA",
              owner: user_array.sample,
              space_image: "https://s3.us-east-2.amazonaws.com/dbc-space-app/spaces/space_images/000/000/001/original/pexels-photo-271724.jpeg")


Space.create!(title: "Comfy Private Office",
              description: "We have an extra office in our new house and we'd love to share it! As web developers, we know that working from home can be distracting and unproductive, so come get away from the distractions and enjoy a private office with everything you need. You are welcome to use our kitchen and bathrooms as well.",
              price: 15,
              rules: "No children, but pets are allowed. We do live here, so please just be respectful of the space and clean up any mess you make.",
              location: "2207 South 3rd St., Austin, TX",
              city: "Austin",
              state: "TX",
              country: "USA",
              owner: user_array.sample,
              space_image: "https://s3.us-east-2.amazonaws.com/dbc-space-app/spaces/space_images/000/000/002/original/office-home-house-desk-159839.jpeg")

Space.create!(title: "Remodeled Basement Office",
              description: "We have recently remodeled our basement into a workspace. It has everything you need including restrooms, fridge, microwave, seperate entrance, extra monitor, and the infamous GoogleFiber!",
              price: 25,
              rules: "No children and no pets. Please park on the street, not in the driveway. Upstairs is off limits.",
              location: "4036 Enclave Mesa Circle, Austin, TX",
              city: "Austin",
              state: "TX",
              country: "USA",
              owner: user_array.sample,
              space_image: "https://s3.us-east-2.amazonaws.com/dbc-space-app/spaces/space_images/000/000/003/original/pexels-photo-260928.jpeg")

Space.create!(title: "Downtown Studio Space",
              description: "Unused studio space with internet, full-furnished, and great downtown view. It is a small space, so probably not best for large group projects, but perfect for getting some quiet time out of the house.",
              price: 20,
              rules: "No pets, clean up after yourself, and please lock the door when you leave",
              location: "1800 Congress Ave, Austin, TX 78701",
              city: "Austin",
              state: "TX",
              country: "USA",
              owner: user_array.sample,
              space_image: "https://s3.us-east-2.amazonaws.com/dbc-space-app/spaces/space_images/000/000/004/original/pexels-photo-667838.jpeg")

Space.create!(title: "Private Space - Torchy's Tacos",
              description: "Here at Torchy's we believe that working and playing go hand-in-hand. At our South Lamar location we have a private backroom that just isn't getting the attention it deserves! Wifi capability and work and drinks at your service, bring a group and come get some work done over dinner.",
              price: 20,
              rules: "Come, eat, and work!",
              location: "3005 S Lamar Blvd, Austin, TX",
              city: "Austin",
              state: "TX",
              country: "USA",
              owner: user_array.sample,
              space_image: "https://s3.us-east-2.amazonaws.com/dbc-space-app/spaces/space_images/000/000/005/original/pexels-photo-373904.jpeg")

# Space.create!(title: "Homey Eastside Space",
#               description: "We work long hours and want to put our space to use while we are away! Our neighborhood just got GoogleFiber so forget about lousy internet connections. You are welcome to enjoy our house fully, make yourself some coffee, grab a snack, cook a meal, even take a shower! We've got indoor and outdoor workspace, so just make yourself at home and get it done!",
#               price: 10,
#               rules: "Please park on Chicon. No loud music or rowdy guests (we do have neighbors after all!) and please no pets or children. We are stricly an apple household, but all PC's are welcome ;)",
#               location: "1901 New York Avenue, Austin, TX",
#               city: "Austin",
#               state: "TX",
#               country: "USA",
#               owner: user_array.sample,
#               space_image: "https://s3.us-east-2.amazonaws.com/dbc-space-app/spaces/space_images/000/000/006/original/pexels-photo-265004.jpeg")

# Space.create!(title: "Fresh Air - Country Home",
#               description: "Need to get out of the city for a day? Come on down to our ranch style house to get a breath of fresh air to focus. We have a porch overlooking the pond, wifi, and fully-functioning kitchen and fireplace. If you're still there when we get home, you might even enjoy a nice home-cooked meal on us!",
#               price: 25,
#               rules: "Be friendly to the animals, they are our family.",
#               location: "11683 Indian Mound Rd., Norwood, NC",
#               city: "Norwood",
#               state: "NC",
#               country: "USA",
#               owner: user_array.sample,
#               space_image: "https://s3.us-east-2.amazonaws.com/dbc-space-app/spaces/space_images/000/000/007/original/pexels-photo-257344.jpeg")

# Space.create!(title: "Bar Backroom",
#               description: "Need a late night space to get some work done? At Orange County Social Club we have just the room for you. Seperated from the rest of the bar (but don't worry, still full bar and kitchen service) you won't have to worry about the noise all the while enjoying the drinks. We also have a TV set up for screen mirroring and a printer in the corner if you need it.",
#               price: 10,
#               rules: "No one under 21 permitted and no alcohol off the premises. Service and emotional support animals allowed.",
#               location: "108 E Main St, Carrboro, NC",
#               city: "Carrboro",
#               state: "NC",
#               country: "USA",
#               owner: user_array.sample)

# Space.create!(title: "Owens Garage",
#               description: "This space is set up for group working. It includes TV's, extra monitors, two projectors, and any adapters you may need. GoogleFiber is available as well as a fully-stocked coffee bar and La Croix in the fridge.",
#               price: 15,
#               rules: "Clean up after yourself, this includes washing dishes that you dirty.",
#               location: "1407 Bob Harrison Street, Austin, TX",
#               city: "Austin",
#               state: "TX",
#               country: "USA",
#               owner: user_array.sample,
#               space_image: "https://s3.us-east-2.amazonaws.com/dbc-space-app/spaces/space_images/000/000/008/original/desk-office-computer-work.jpg")

# Space.create!(title: "Blue Sky Cafe",
#               description: "We are a popular east Nashville cafe and restaurant (you might have seen us on the show 'Nashville') and we're opening our space up to include workspaces for rent. Probably better for solo workers, expect a cafe style vibe, but with extra amenities including free coffee, free printing, and after hours availability.",
#               price: 10,
#               rules: "Please be considerate of others with your noise. Printing is free for the first 30 pages. After that we can talk about pricing. Well-behaved pets allowed, but please no children.",
#               location: "700 Fatherland St, Nashville, TN",
#               city: "Nashville",
#               state: "TN",
#               country: "USA",
#               owner: user_array.sample)

# Space.create!(title: "Historic South Austin Space",
#               description: "Are you the type of person that thrives around old books, typewriters, and drafty (we like to say 'breezy') spaces? Yes? Then this is the space for you. Original wrought-iron railings, hardwood floors, and the smell of memories in the air, this space will put you in the mood to create.",
#               price: 15,
#               rules: "This space is registered 'historic' so please be very careful with things. No children, no pets, no general debauchery.",
#               location: "1106 Oxford Avenue, Austin, TX",
#               city: "Austin",
#               state: "TX",
#               country: "USA",
#               owner: user_array.sample,
#               space_image: "https://s3.us-east-2.amazonaws.com/dbc-space-app/spaces/space_images/000/000/001/original/pexels-photo-106936.jpeg")

# Space.create!(title: "Empty Apartment",
#               description: "I live with my partner, so my apartment is mostly empty and available. It's a top floor, modern style, corner unit, so great views and generally quiet, comes with a bed for napping and a kitchen and bathroom.",
#               price: 20,
#               rules: "Pets are fine, children are fine, please just be considerate of neighbors with respect to noise.",
#               location: "1000 E 5th St, Austin, TX",
#               city: "Austin",
#               state: "TX",
#               country: "USA",
#               owner: user_array.sample,
#               space_image: "https://s3.us-east-2.amazonaws.com/dbc-space-app/spaces/space_images/000/000/004/original/pexels-photo-276724.jpeg")

# Space.create!(title: "Beach Office",
#               description: "We know you're on vacation, but we also know that sometimes work can't wait. Come enjoy our beach office and get the best of both worlds! Includes: wifi, fridge, coffee, bathrooms, open aired workspace, beach views, hammock, and towels for that spontaneous ocean dip.",
#               price: 20,
#               rules: "No smoking inside.",
#               location: "Road Tulum-Boca Paila km7",
#               city: "Tulum",
#               country: "Mexico",
#               owner: user_array.sample)

# Space.create!(title: Faker::Address.community,
#               description: Faker::Lorem.paragraph,
#               price: Faker::Number.between(10, 100),
#               rules: Faker::Lorem.sentence,
#               location: Faker::Address.street_address,
#               city: Faker::Address.city,
#               state: Faker::Address.state_abbr,
#               country: Faker::Address.country,
#               owner: user_array.sample)
# end

# Space.create!(title: Faker::Address.community,
#               description: Faker::Lorem.paragraph,
#               price: Faker::Number.between(10, 100),
#               rules: Faker::Lorem.sentence,
#               location: Faker::Address.street_address,
#               city: Faker::Address.city,
#               state: Faker::Address.state_abbr,
#               country: Faker::Address.country,
#               owner: user_array.sample)
# end

# Space.create!(title: Faker::Address.community,
#               description: Faker::Lorem.paragraph,
#               price: Faker::Number.between(10, 100),
#               rules: Faker::Lorem.sentence,
#               location: Faker::Address.street_address,
#               city: Faker::Address.city,
#               state: Faker::Address.state_abbr,
#               country: Faker::Address.country,
#               owner: user_array.sample)
# end

# Space.create!(title: Faker::Address.community,
#               description: Faker::Lorem.paragraph,
#               price: Faker::Number.between(10, 100),
#               rules: Faker::Lorem.sentence,
#               location: Faker::Address.street_address,
#               city: Faker::Address.city,
#               state: Faker::Address.state_abbr,
#               country: Faker::Address.country,
#               owner: user_array.sample)
# end

# Space.create!(title: Faker::Address.community,
#               description: Faker::Lorem.paragraph,
#               price: Faker::Number.between(10, 100),
#               rules: Faker::Lorem.sentence,
#               location: Faker::Address.street_address,
#               city: Faker::Address.city,
#               state: Faker::Address.state_abbr,
#               country: Faker::Address.country,
#               owner: user_array.sample)
# end

# Space.create!(title: Faker::Address.community,
#               description: Faker::Lorem.paragraph,
#               price: Faker::Number.between(10, 100),
#               rules: Faker::Lorem.sentence,
#               location: Faker::Address.street_address,
#               city: Faker::Address.city,
#               state: Faker::Address.state_abbr,
#               country: Faker::Address.country,
#               owner: user_array.sample)
# end

# Space.create!(title: Faker::Address.community,
#               description: Faker::Lorem.paragraph,
#               price: Faker::Number.between(10, 100),
#               rules: Faker::Lorem.sentence,
#               location: Faker::Address.street_address,
#               city: Faker::Address.city,
#               state: Faker::Address.state_abbr,
#               country: Faker::Address.country,
#               owner: user_array.sample)
# end

# Space.create!(title: Faker::Address.community,
#               description: Faker::Lorem.paragraph,
#               price: Faker::Number.between(10, 100),
#               rules: Faker::Lorem.sentence,
#               location: Faker::Address.street_address,
#               city: Faker::Address.city,
#               state: Faker::Address.state_abbr,
#               country: Faker::Address.country,
#               owner: user_array.sample)
# end

space_array = Space.all

5.times do
  Booking.create!(space: space_array.sample,
                renter: user_array.sample,
                start_time: Faker::Time.between(DateTime.now - 1.minute, DateTime.now, :morning),
                end_time: Faker::Time.between(DateTime.now - 1.minute, DateTime.now, :afternoon))
end
booking_array = Booking.all

5.times do
  RenterRating.create!(booking: booking_array.sample,
                      review: Faker::Lorem.paragraph,
                      stars: [1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5].sample)
end

5.times do
  SpaceRating.create!(booking: booking_array.sample,
                      comment: Faker::Lorem.paragraph,
                      score: [1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5].sample)
end


amenities = ["Wifi", "Coffee", "Restrooms", "Seating", "Outlets", "Fridge", "Parking", "Tables"]
amenities.each do |amenity|
  Amenity.create(name: amenity)
end
amenity_array = Amenity.all

10.times do
  SpaceAmenity.create!(space: space_array.sample,
                      amenity: amenity_array.sample)
end


