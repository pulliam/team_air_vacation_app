class BookingsController < ApplicationController

  def create
  	Booking.create(booking_params)
   redirect_to listings_path #NEED HELP HERE
  end

 private
  def booking_params
  	params.require(:booking).permit(:guest_id, :listing_id)
  end
end
