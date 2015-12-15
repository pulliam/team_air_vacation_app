class ListingsController < ApplicationController

  def index  
    @neighborhood = Neighborhood.find(params[:id])
    @listings = Listing.where(:neighborhood_id => params[:id])
  end

  def show 
    @listing = Listing.find(params[:id])
    @neighborhood = Neighborhood.where(:id => @listings.neighborhood_id)
    @reviews = Review.where(listing_id: params[:id])
  end

end
