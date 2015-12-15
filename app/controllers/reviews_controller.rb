class ReviewsController < ApplicationController

  before_action :authorize, except: [:index, :show]

  def index
    @listing = Listing.find(params[:id])
    @reviews = Review.where(listing_id: params[:id])
    # @reviews = @listing.reviews
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.create({
      title: params[:title],
      body: params[:body],
      guest_id: session[:user_id],
      listing_id: params[:id],
      created_at: DateTime.now,
      })
    redirect_to reviews_path
  end

  def destroy
    @review = Review.find(params[:id]).destroy
    redirect_to reviews_path
  end

end