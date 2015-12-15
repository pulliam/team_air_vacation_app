class User < ActiveRecord::Base
	has_secure_password
	has_many :listings, class_name: "Listing", foreign_key: "host_id"
	has_many :bookings, class_name: "Booking", foreign_key: "guest_id"
	has_many :reviews, class_name: "Review", foreign_key: "guest_id"

end