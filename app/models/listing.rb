class Listing < ActiveRecord::Base

	has_many :bookings, class_name: "Booking"
	has_many :reviews, class_name: "Review"
	belongs_to :host, class_name: "User"

end