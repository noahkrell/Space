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

Space.create!(title: "Homey Eastside Space",
              description: "We work long hours and want to put our space to use while we are away! Our neighborhood just got GoogleFiber so forget about lousy internet connections. You are welcome to enjoy our house fully, make yourself some coffee, grab a snack, cook a meal, even take a shower! We've got indoor and outdoor workspace, so just make yourself at home and get it done!",
              price: 10,
              rules: "Please park on Chicon. No loud music or rowdy guests (we do have neighbors after all!) and please no pets or children. We are stricly an apple household, but all PC's are welcome ;)",
              location: "1901 New York Avenue, Austin, TX",
              city: "Austin",
              state: "TX",
              country: "USA",
              owner: user_array.sample,
              space_image: "https://s3.us-east-2.amazonaws.com/dbc-space-app/spaces/space_images/000/000/006/original/pexels-photo-265004.jpeg")

Space.create!(title: "Fresh Air - Country Home",
              description: "Need to get out of the city for a day? Come on down to our ranch style house to get a breath of fresh air to focus. We have a porch overlooking the pond, wifi, and fully-functioning kitchen and fireplace. If you're still there when we get home, you might even enjoy a nice home-cooked meal on us!",
              price: 25,
              rules: "Be friendly to the animals, they are our family.",
              location: "11683 Indian Mound Rd., Norwood, NC",
              city: "Norwood",
              state: "NC",
              country: "USA",
              owner: user_array.sample,
              space_image: "https://s3.us-east-2.amazonaws.com/dbc-space-app/spaces/space_images/000/000/007/original/pexels-photo-257344.jpeg")

Space.create!(title: "Bar Backroom",
              description: "Need a late night space to get some work done? At Orange County Social Club we have just the room for you. Seperated from the rest of the bar (but don't worry, still full bar and kitchen service) you won't have to worry about the noise all the while enjoying the drinks. We also have a TV set up for screen mirroring and a printer in the corner if you need it.",
              price: 10,
              rules: "No one under 21 permitted and no alcohol off the premises. Service and emotional support animals allowed.",
              location: "108 E Main St, Carrboro, NC",
              city: "Carrboro",
              state: "NC",
              country: "USA",
              owner: user_array.sample,
              space_image: "https://s3.us-east-2.amazonaws.com/dbc-space-app/spaces/space_images/000/000/024/original/pexels-photo-245219.jpeg")

Space.create!(title: "Owens Garage",
              description: "This space is set up for group working. It includes TV's, extra monitors, two projectors, and any adapters you may need. GoogleFiber is available as well as a fully-stocked coffee bar and La Croix in the fridge.",
              price: 15,
              rules: "Clean up after yourself, this includes washing dishes that you dirty.",
              location: "1407 Bob Harrison Street, Austin, TX",
              city: "Austin",
              state: "TX",
              country: "USA",
              owner: user_array.sample,
              space_image: "https://s3.us-east-2.amazonaws.com/dbc-space-app/spaces/space_images/000/000/008/original/desk-office-computer-work.jpg")

Space.create!(title: "Blue Sky Cafe",
              description: "We are a popular east Nashville cafe and restaurant (you might have seen us on the show 'Nashville') and we're opening our space up to include workspaces for rent. Probably better for solo workers, expect a cafe style vibe, but with extra amenities including free coffee, free printing, and after hours availability.",
              price: 10,
              rules: "Please be considerate of others with your noise. Printing is free for the first 30 pages. After that we can talk about pricing. Well-behaved pets allowed, but please no children.",
              location: "700 Fatherland St, Nashville, TN",
              city: "Nashville",
              state: "TN",
              country: "USA",
              owner: user_array.sample,
              space_image: "https://s3.us-east-2.amazonaws.com/dbc-space-app/spaces/space_images/000/000/030/original/pexels-photo-271753.jpeg")

Space.create!(title: "Historic South Austin Space",
              description: "Are you the type of person that thrives around old books, typewriters, and drafty (we like to say 'breezy') spaces? Yes? Then this is the space for you. Original wrought-iron railings, hardwood floors, and the smell of memories in the air, this space will put you in the mood to create.",
              price: 15,
              rules: "This space is registered 'historic' so please be very careful with things. No children, no pets, no general debauchery.",
              location: "1106 Oxford Avenue, Austin, TX",
              city: "Austin",
              state: "TX",
              country: "USA",
              owner: user_array.sample,
              space_image: "https://s3.us-east-2.amazonaws.com/dbc-space-app/spaces/space_images/000/000/001/original/pexels-photo-106936.jpeg")

Space.create!(title: "Empty Apartment",
              description: "I live with my partner, so my apartment is mostly empty and available. It's a top floor, modern style, corner unit, so great views and generally quiet, comes with a bed for napping and a kitchen and bathroom.",
              price: 20,
              rules: "Pets are fine, children are fine, please just be considerate of neighbors with respect to noise.",
              location: "1000 E 5th St, Austin, TX",
              city: "Austin",
              state: "TX",
              country: "USA",
              owner: user_array.sample,
              space_image: "https://s3.us-east-2.amazonaws.com/dbc-space-app/spaces/space_images/000/000/004/original/pexels-photo-276724.jpeg")

Space.create!(title: "Beach Office",
              description: "We know you're on vacation, but we also know that sometimes work can't wait. Come enjoy our beach office and get the best of both worlds! Includes: wifi, fridge, coffee, bathrooms, open aired workspace, beach views, hammock, and towels for that spontaneous ocean dip.",
              price: 20,
              rules: "No smoking inside.",
              location: "Road Tulum-Boca Paila km7",
              city: "Tulum",
              country: "Mexico",
              owner: user_array.sample,
              space_image: "https://s3.us-east-2.amazonaws.com/dbc-space-app/spaces/space_images/000/000/029/original/pexels-photo-271614.jpeg")

Space.create!(title: Faker::Address.community,
              description: "We are a young couple with some extra space and would love to welcome you into our office when it's not in use! Make yourself at home, the kitchen is available for use, as well as the bathroom and the patio. Internet is reliable and feel free to park in the driveway!",
              price: 15,
              rules: "Please leave the dog in his room, he is friendly, we just don't want him to be bothering you! Other than that, please just clean up after yourself.",
              location: "923 Mitchell Road, Nashville, TN",
              city: "Nashville",
              state: "TN",
              country: "USA",
              owner: user_array.sample,
              space_image: "https://s3.us-east-2.amazonaws.com/dbc-space-app/spaces/space_images/000/000/032/original/pexels-photo-358572.jpeg")


Space.create!(title: "Downtown Condo",
              description: "It is rumored that Dolly Parton has a condo a couple floors up, come work in my space and maybe you'll be lucky enough to bump into her! Enjoy all the amenties of the condo building while you are here, including gym, pool, and conference room space. As for my actual office, it has everything you need to plug in and start working.",
              price: 20,
              rules: "No loud noises, no children, no smoking.",
              location: "923 Mitchell Road, Nashville, TN",
              city: "Nashville",
              state: "TN",
              country: "USA",
              owner: user_array.sample,
              space_image: "https://s3.us-east-2.amazonaws.com/dbc-space-app/spaces/space_images/000/000/021/original/pexels-photo-164437.jpeg")


Space.create!(title: "Spacious Studio",
              description: "I work long hours so I like to offer my space up during the day to those who need a quiet place away from home to get some work done. I keep the place super clean and minimal, bare necessities, just space and quiet. Lots of natural light if that's what you're into.",
              price: 20,
              rules: "Lock the door and turn off the air conditioner when you leave.",
              location: "4210 Bluffs Lane, Durham, NC",
              city: "Durham",
              state: "NC",
              country: "USA",
              owner: user_array.sample,
              space_image: "https://s3.us-east-2.amazonaws.com/dbc-space-app/spaces/space_images/000/000/027/original/pexels-photo-276651.jpeg")


Space.create!(title: "Suburban Space",
              description: "We just expanded our house to include a huge work-from-home office, but I got a different job so the space is open for use! Comes with a projector, plenty of outlets and adapters, free coffee, and a couple really cute dogs to keep you company. We also have a back patio if you need some fresh air!",
              price: 15,
              rules: "Work hard. No groups bigger than 5. No smoking inside or out.",
              location: "2905 Alderman Lane, Durham, NC",
              city: "Durham",
              state: "NC",
              country: "USA",
              owner: user_array.sample,
              space_image: "https://s3.us-east-2.amazonaws.com/dbc-space-app/spaces/space_images/000/000/026/original/pexels-photo-265097.jpeg")


Space.create!(title: "Cozy Cabin",
              description: "Want to get some fresh air away from the city noise? Our house is located just outside the city, surrounded by huge trees and a lively forest. No city noise, only birds, deer, squirrels, and you. This is a great place to get some hardcore thinking and working done if you are in a crunch and finding yourself easily distracted.",
              price: 15,
              rules: "Please take your trash out when you leave so the critters don't try to get in, and please no smoking in or out.",
              location: "1610 W. Club Blvd., Durham, NC",
              city: "Durham",
              state: "NC",
              country: "USA",
              owner: user_array.sample,
              space_image: "https://s3.us-east-2.amazonaws.com/dbc-space-app/spaces/space_images/000/000/028/original/pexels-photo-276720.jpeg")


Space.create!(title: "Multiple Rooms",
              description: "I'm going out of town so I'm opening up my McMansion for you to use! I have 5 open rooms set up with desks and chairs, so this would be perfect for a weekend hack-a-thon or conference type deal. You can not stay overnight, but please come hang during the day!",
              price: 10,
              rules: "Work hard, play hard, don't destroy the house.",
              location: "1019 W Markham Ave., Durham, NC",
              city: "Durham",
              state: "NC",
              country: "USA",
              owner: user_array.sample,
              space_image: "https://s3.us-east-2.amazonaws.com/dbc-space-app/spaces/space_images/000/000/025/original/pexels-photo-260689.jpeg")
space_array = Space.all

20.times do
  Booking.create!(space: space_array.sample,
                renter: user_array.sample,
                start_time: Faker::Time.between(DateTime.now - 1.minute, DateTime.now, :morning),
                end_time: Faker::Time.between(DateTime.now - 1.minute, DateTime.now, :afternoon))
end
booking_array = Booking.all


SpaceRating.create!(booking: booking_array.sample,
                      comment: "This space was okay. It had all of the things I needed technically, but the place was kind of dirty and there was no toilet paper in the bathroom. I probably wouldn't book here again.",
                      score: 3)

SpaceRating.create!(booking: booking_array.sample,
                      comment: "Great space, clean, workable, quiet, the owner was very friendly and communicative, but not overbearing.",
                      score: 4)

SpaceRating.create!(booking: booking_array.sample,
                      comment: "I love this space!! In fact, I have plans to book here again for another long overtime weekend. Owner is the best, the amenities are fantastic and the place itself is just super cute and has a great vibe!",
                      score: 5)

SpaceRating.create!(booking: booking_array.sample,
                      comment: "I gave 1 star because this was the worst place I've ever booked. It was dirty, it smelled bad, the location was hard to find, and when I got there I couldn't unlock door and had to call the owner (who took an hour) to come let me in and then he blamed me!",
                      score: 1)

SpaceRating.create!(booking: booking_array.sample,
                      comment: "It smelled like a trashcan in there, but I couldn't find any trash anywhere. I won't be staying here again.",
                      score: 2)

SpaceRating.create!(booking: booking_array.sample,
                      comment: "This place was pretty average. Nothing too fancy or upscale about it, but also nothing to really deter me to go again. I'm just not sure if it's worth the price.",
                      score: 3.5)

SpaceRating.create!(booking: booking_array.sample,
                      comment: "I really liked this place! I gave 4.5 stars because I'm one of those people that never gives 5 stars because there is always room for improvement!",
                      score: 4.5)

SpaceRating.create!(booking: booking_array.sample,
                      comment: "It was perfect! I got so much done just getting out of my house for the day, like waaaay more than I would have if I had stayed home. Loved everything about it!",
                      score: 5)

# SpaceRating.create!(booking: booking_array.sample,
#                       comment: ,
#                       score: 1.5)

# SpaceRating.create!(booking: booking_array.sample,
#                       comment: ,
#                       score: 2.5)

# SpaceRating.create!(booking: booking_array.sample,
#                       comment: ,
#                       score: 1)

# SpaceRating.create!(booking: booking_array.sample,
#                       comment: ,
#                       score: 1.5)

# SpaceRating.create!(booking: booking_array.sample,
#                       comment: ,
#                       score: 2)

# SpaceRating.create!(booking: booking_array.sample,
#                       comment: ,
#                       score: 2.5)

# SpaceRating.create!(booking: booking_array.sample,
#                       comment: ,
#                       score: 3)

# SpaceRating.create!(booking: booking_array.sample,
#                       comment: ,
#                       score: 3.5)

# SpaceRating.create!(booking: booking_array.sample,
#                       comment: ,
#                       score: 4)

# SpaceRating.create!(booking: booking_array.sample,
#                       comment: ,
#                       score: 4.5)

# SpaceRating.create!(booking: booking_array.sample,
#                       comment: ,
#                       score: 5)


amenities = ["Wifi", "Coffee", "Restroom", "Seating", "Outlets", "Fridge", "Parking", "Tables", "Outdoor Space"]
amenities.each do |amenity|
  Amenity.create(name: amenity)
end
amenity_array = Amenity.all

40.times do
  SpaceAmenity.create!(space: space_array.sample,
                      amenity: amenity_array.sample)
end


