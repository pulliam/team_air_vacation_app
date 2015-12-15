# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    neighborhoods = Neighborhood.create ([{name: 'Manhattan'}, {name: 'Brooklyn'}, {name: 'Queens'}])

    listing = Listing.create ({ address: "1234 Sesame St.", photo_url: "http://vignette2.wikia.nocookie.net/muppet/images/2/23/123sesamestreet-nopeople.jpg", price: '$100', description: "Human is washing you why halp oh the horror flee scratch hiss bite hack up furballs.", availability: 'true' })

    user = User.create ({ email: 'elmo@email.com', password: 'abc123', password_confirmation: 'abc123'})

    review = Review.create({ title: 'Can you tell me how to get to Sesame Street?', body: 'YAAAAAAAAAAAAAAAAAAY'})

    booking = Booking.create 