class BookingsController < ActionController::Base
  
  # def index
  # 	@bookings = Booking.all
  # end

  # def show
  # 	@booking = Booking.find(params[:id])
  # end

  def new 
  	@booking = Booking.new
  	@listing_of_new_booking = Listing.find(params[:id])
	@guest = @listing_of_new_booking.guest_id
  end

  def create
  	Booking.create(booking_params)
  	redirect_to users_path
  end

 private
  def booking_params
  	params.require(:booking).permit(:guest_id, :listing_id)
  end
end
