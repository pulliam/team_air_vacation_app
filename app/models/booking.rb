class Booking < ActiveRecord::Base

	belongs_to :listing, class_name: "Listing"
	belongs_to :guest, class_name: "User"

end