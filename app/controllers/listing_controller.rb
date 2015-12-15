class ListingController < ApplicationController

  def index  
    @neighborhood = Neighborhood.find(params[:id])
    @listings = Listing.where(:neighborhood_id => params[:id])
  end

  def show 
    @listings = Listing.find(params[:id])
    @neighborhood = Neighborhood.where(:id => @listings.neighborhood_id)
  end

end
