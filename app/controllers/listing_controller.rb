class ListingController < ApplicationController

  def index  
    @neighborhood = Neighborhood.find(params[:id])
    @listings = Listing.where(:neighborhood_id => params[:id])
  end

  def show 
    @listings = Listing.find(params[:id])
  end

end
